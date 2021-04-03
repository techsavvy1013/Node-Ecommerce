import Product, { Author, Meta, Social } from './product.type';
import Category from '../category/category.type';
import { plainToClass } from 'class-transformer';
import connectDB from '../../../db';
import { v4 as uuidv4 } from 'uuid';
import fs, { mkdir, mkdirSync, readFileSync } from 'fs';
import { ProductType } from './product.enum';
import { split } from 'lodash';
import Gallery from './gallery.type';

import {SHOP_PRODUCT_IMAGE_URL} from '../../../base_url';

export function createProductSamples() {

  var db = connectDB();
  var res = db.query(`select * from view_products;`);

  var temp = [];
  for(let i = 0; i < res.length; i++){
    let entry : Product = new Product();
    entry.id = res[i].id;
    entry.title = res[i].title;
    entry.slug = res[i].slug;
    entry.price = res[i].regular_price;
    entry.salePrice = res[i].discount_price;
    entry.discountInPercent = res[i].discount_percent;
    entry.image = `${SHOP_PRODUCT_IMAGE_URL}/${res[i].image}/${res[i].image}_thumb.png`;   
    entry.description = res[i].description;
    entry.type = res[i].tag_slug;   
    entry.unit = res[i].unit;

    entry.categories = [];
    entry.gallery = [];

    fs.readdir(`./data/products/${res[i].image}`, function (err, files) {
      //handling error
      if (!err) {
        //listing all files using forEach
        files.forEach(function (file) {
        // Do whatever you want to do with the file
          var gallery = new Gallery();
          gallery.url = `${SHOP_PRODUCT_IMAGE_URL}/${res[i].image}/${file}`;   
          entry.gallery.push(gallery);
        });  
      } 
    });

    var ids = split(res[i].category_ids,'^^^');
    var titles = split(res[i].category_names,'^^^');
    var slugs = split(res[i].category_slugs,'^^^');
    for(var j = 0; j < ids.length; j++)
    {
      var c_entry = new Category();
      c_entry.id = Number(ids[j]);
      c_entry.title = titles[j];
      c_entry.slug = slugs[j];
      entry.categories.push(c_entry);
    }

    if(res[i].author_id)
    {
      var author = new Author();
      author.id = res[i].author_id;
      author.avatar = res[i].avatar;
      author.name = res[i].author_name;
      author.bio = res[i].bio;
      author.email = res[i].email;
      author.website = res[i].website;
      author.socials = [];
      if(res[i].social_ids)
      {
        let ids = split(res[i].social_ids,'^^^');
        let profile_links = split(res[i].profile_links,'^^^');
        let medias = split(res[i].medias, '^^^');
        for(let t=0; t<ids.length; t++)
        {
          var social = new Social();
          social.id = ids[t];
          social.media = medias[t];
          social.profileLink = profile_links[t];
          author.socials.push(social);
        }
      }

      entry.author = author;
    }

    if(res[i].meta_id)
    {
      var meta = new Meta();
      meta.country = res[i].country;
      meta.edition = res[i].edition;
      meta.isbn = res[i].isbn;
      meta.numberOfPage = res[i].numberOfPage;
      meta.numberOfReader = res[i].numberOfReader;
      meta.publisher = res[i].publisher;
      meta.samplePDF = res[i].samplePDF;
      meta.languages = [];
      if(res[i].languages)
      {
        var languages = split(res[i].languages,'^^^');
        for(let t = 0; t < languages.length; t++)
        {
          meta.languages.push(languages[t]);
        }
      }

      entry.meta = meta;
    }

    temp.push(entry);
  }
  return temp;
}
//   var db = connectDB();

//   for(var i = 0; i < temp.length; i++)
//   {
//     console.log(temp[i].id,'sadfasdfasdfasdfasdf');
//     var aaa = db.query(`SELECT * FROM products WHERE id = ${temp[i].id}`);
//     if(aaa.length != 0)
//       continue;
//     var image = uuidv4();
//     uploadFile(temp[i].image, temp[i].gallery, image);

//       var ttt = temp[i].description.replace('"','\'');
   
//     db.query(`INSERT INTO products 
//     ( id, 
//       slug, 
//       name, 
//       image, 
//       description, 
//       regular_price, 
//       discount_price, 
//       unit, 
//       inserted_at, 
//       updated_at )
//     VALUES(
//       "${temp[i].id}", 
//       "${temp[i].slug}", 
//       "${temp[i].title}", 
//       "${image}", 
//       "${ttt}", 
//       "${temp[i].price}",
//       "${temp[i].salePrice}", 
//       "${temp[i].unit}", 
//       NOW(), 
//       NOW()
//     )`);
    
//       console.log(`SELECT * FROM tags WHERE slug = '${temp[i].type}'`);

//     var result = db.query(`SELECT * FROM tags WHERE slug = '${temp[i].type}'`);   
             
//     console.log(`INSERT INTO product_tags (product_id, tag_id,inserted_at,updated_at) VALUE('${temp[i].id}','${result[0].id}', NOW(), NOW())`)
//     db.query(`INSERT INTO product_tags (product_id, tag_id,inserted_at,updated_at) VALUE('${temp[i].id}','${result[0].id}', NOW(), NOW())`); 

//     for(var j = 0; j < temp[i].categories.length; j++)
//     {
//       var t = db.query(`SELECT * FROM categories WHERE name = '${temp[i].categories[j].title}'`)
//       if(t.length != 0)
//        db.query(`INSERT INTO product_categories (category_id, product_id, inserted_at, updated_at)
//        VALUE('${t[0].id}','${temp[i].id}',NOW(), NOW())`);
//     }
//   }

//  db.dispose();
//  return plainToClass(Product, temp);
// }

// const uploadFile =async (url:any,gallery:any, savename:any) => {
//   var request = require('request');
//   await request(url).pipe(fs.createWriteStream(`../admin/src/assets/image/products/${savename}.png`));
//   if(gallery.length != 0)
//   {
//     if(!fs.existsSync(`../admin/src/assets/image/products/${savename}`))
//       mkdirSync(`../admin/src/assets/image/products/${savename}`);
//     for(var i = 0; i < gallery.length; i++)
//     {
//       console.log(gallery[i].url);
//       await request(gallery[i].url).pipe(fs.createWriteStream(`../admin/src/assets/image/products/${savename}/${uuidv4()}.png`));
//     }
//   }
// }