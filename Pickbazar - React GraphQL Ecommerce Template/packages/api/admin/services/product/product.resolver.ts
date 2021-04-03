import { Resolver, Query, Arg, Args, Mutation } from 'type-graphql';
import loadProducts from './product.data';
import Product from './product.type';
import Products from './products.type';
import GetProductsArgs from './product.args_type';
import {GraphQLUpload}  from 'graphql-upload';
import AddCategoryInput from '../category/category.input_type';
import AddProductInput from './product.input_type';
import search from '../../helpers/search';
import shuffle from '../../helpers/shuffle';
import { sortByHighestNumber, sortByLowestNumber } from '../../helpers/sorts';
import savedFile from '../category/file.type';
import { v4 as uuidv4 } from 'uuid';
import { createWriteStream, unlinkSync} from 'fs';
import connectDB from '../../../db';
import { lastIndexOf } from 'lodash';

const fs = require('fs');

/**************** Upload process.... ***********************/

const storeUpload = async ({ stream, filename, mimetype }:any) => {
  //[1].make unipue file name
  // const unique_id = uuidv4();
  let date_ob = new Date();
  var gallery = filename.slice(0,lastIndexOf(filename,'\.'));

  console.log(gallery);
  var dir = `../admin/src/assets/image/products/${gallery}`;
  if (!fs.existsSync(dir)){
    fs.mkdirSync(dir);
  }

  //[2].write file and reader.
  //var l_index = filename.lastIndexOf('.');
  var file_path = `${filename}`;
  var path = dir + `/${filename}`;
  await new Promise((resolve, reject) =>
    stream
        .on('error', (error:any) => {
            if (stream.truncated)
                unlinkSync(path);
            reject(error);
        })
        .pipe(createWriteStream(path))
        .on('error', (error:any) => reject(error))
        .on('finish', () => resolve({ path }))
  );
  return filename;
};

const processUpload = async (upload:any) => {
  const { createReadStream, filename, mimetype } = await upload;
  const stream = createReadStream();
  const savename = await storeUpload({ stream, filename, mimetype });
  var file = new savedFile();
  file.filename = savename;
  file.mimetype = mimetype;
  return file;
};

const removeImage = async (image:any) => 
{
  var file = `../admin/src/${image}`;
  if (fs.existsSync(file)){
    unlinkSync(file);
  }
}

@Resolver()
export default class ProductResolver {

  private readonly productsCollection: Product[] = loadProducts();

  @Query((returns) => Products, { description: 'Get all the products' })
  async products(
    @Args()
    { limit, offset, sortByPrice, type, searchText, category }: GetProductsArgs
  ): Promise<Products> {
    let products = this.productsCollection;

    if (category) {
      products = products.filter((product) =>
        product.categories.find(
          (category_item) => category_item.slug === category
        )
      );
    }
    if (type) {
      products = products.filter((product) => product.type === type);
    }
    if (sortByPrice) {
      if (sortByPrice === 'highestToLowest') {
        products = sortByHighestNumber(products, 'price');
      }
      if (sortByPrice === 'lowestToHighest') {
        products = sortByLowestNumber(products, 'price');
      }
    } else {
      products = shuffle(products);
    }

    // return await products.slice(0, limit);
    products = await search(products, ['name'], searchText);
    const hasMore = products.length > offset + limit;

    return {
      items: products.slice(offset, offset + limit),
      totalCount: this.productsCollection.length,
      hasMore,
    };
  }

  @Query(() => Product)
  async product(@Arg('slug') slug: string): Promise<Product | undefined> {
    return await this.productsCollection.find((item) => item.slug === slug);
  }

  @Mutation(returns => savedFile)
  async productImageUpload(@Arg('file', type => GraphQLUpload)  file:any) {
    console.log('Product image file uplading......');
    const response = await processUpload(file);
    return response;
  }

  @Mutation(() => Product, { description: 'Update Product' }) 
  async updateProduct(@Arg('product') product: AddProductInput): Promise<Product> 
  {
    //[1].
    var db = connectDB();
    var res = db.query(`SELECT * FROM products WHERE id = ${product.id}`);
    removeImage(res[0].image);
    // console.log(`UPDATE products set slug = '${product.slug}', name = '${product.slug}',
    // image = '${product.image}', description = '${product.description}', regular_price = '${product.price}',
    // discount_price ='${product.salePrice}', discount_percent = '${product.discountInPercent}', unit = '${product.slug}',
    // updated_at = NOW()
    // WHERE id = ${product.id}`);
    //[2]. insert product.
    db.query(`UPDATE products set slug = '${product.slug}', name = '${product.slug}',
              image = '${product.image}', description = '${product.description}', regular_price = '${product.price}',
              discount_price ='${product.salePrice}', discount_percent = '${product.discountInPercent}', unit = '${product.slug}',
              updated_at = NOW()
              WHERE id = ${product.id}`);

    //[3]. register product type.
    db.query(`UPDATE product_tags SET tag_id = ${product.type}, updated_at = NOW() WHERE product_id = ${product.id}`);

    //[4]. change the product categories.
    db.query(`DELETE FROM product_categories WHERE product_id = ${product.id}`);
    for(var i = 0; i < product.categories.length; i++)
    {
      db.query(`INSERT INTO product_categories (category_id, product_id, inserted_at, updated_at)
       VALUE('${product.categories[i].id}','${product.id}',NOW(), NOW())`); 
    }

    db.dispose();
    var filename = product.image;
    var tmp = `http://localhost:4000/admin_productimage?folder=${filename.slice(0,lastIndexOf(filename,'\.'))}&filename=${filename}`;
    product.image = tmp
    return product;
  }

  @Mutation(() => Product, { description: 'Create Product' })
  async createProduct(
    @Arg('product') product: AddProductInput//,  @Arg('categories') categories: AddCategoryInput
  ): Promise<Product> {
    console.log(product);
    //[1]. insert product to product table.
    var db = connectDB();
    db.query(`INSERT INTO products (slug, name, image, description, regular_price, discount_price, discount_percent, unit, inserted_at, updated_at)`
    + ` VALUES('${product.slug}', '${product.name}', '${product.image}', '${product.description}', '${product.price}', '${product.salePrice}',`
    + ` '${product.discountInPercent}', '${product.unit}', NOW(), NOW())`);
    
    var tmp = db.query(`SELECT id FROM products WHERE name = '${product.name}'`);
    var id = tmp[0].id;
   // console.log(id,'id');

    //[2]. register the product to type table.
    db.query(`INSERT INTO product_tags (product_id, tag_id,inserted_at,updated_at) VALUE('${id}','${product.type}', NOW(), NOW())`);  
    
    //[3]. register the product to the categories table
    for(var i = 0; i < product.categories.length; i++)
    {
      db.query(`INSERT INTO product_categories (category_id, product_id, inserted_at, updated_at)
       VALUE('${product.categories[i].id}','${id}',NOW(), NOW())`); 
    }
    db.dispose(); 
    return product;
  }
}
