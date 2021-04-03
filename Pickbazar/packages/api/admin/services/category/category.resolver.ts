import { Resolver, Query, Arg, ID, Mutation,  } from 'type-graphql';
import loadCategories from '../../data/category.data';
import Tag from '../../data/tags.data';
import Category from './category.type';
import savedFile from './file.type';
import AddCategoryInput from './category.input_type';
import {GraphQLUpload}  from 'graphql-upload';
import { createWriteStream, unlinkSync} from 'fs';
import search from '../../helpers/search';
import { lastIndexOf } from 'lodash';
import connectDB from '../../../db';
import { v4 as uuidv4 } from 'uuid';
import { stringify } from 'querystring';

const fs = require('fs');

/**************** Upload process.... ***********************/

const storeUpload = async ({ stream, filename, mimetype }:any) => {
  //[1].make unipue file name
  const unique_id = uuidv4();
  var dir = `../admin/src/assets/icons/`;
  if (!fs.existsSync(dir)){
    fs.mkdirSync(dir);
  }

  //[2].write file and reader.
  var file_path = `${unique_id}.${filename.slice(-3)}`;
  var path = dir + `/${file_path}`;
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
  
  var reader_path = `${unique_id}.tsx`;
  path = dir + `/${reader_path}`;
  var content = `import React from 'react';
                  import image from 'assets/icons/${file_path}';
                  export default function GetImage()
                  {
                    return (<img src={image} alt='${file_path}'/>);
                  };`;
  
  await fs.writeFile(`${path}`, content, function (err:any) {
    if (err) return console.log(err);
    console.log('Image reader is uploaded');
  });

  return unique_id;
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

@Resolver()
export default class CategoryResolver {
  private readonly categoriesCollection: Category[] = loadCategories();
  
  @Query(returns => [Category], { description: 'Get all the categories' })
  async categories(
    @Arg('type', { nullable: true }) type?: string,
    @Arg('searchBy', { defaultValue: '' }) searchBy?: string
  ): Promise<Category[]> {
    //let categories = this.categoriesCollection;
    let categories = loadCategories();
    if (type) {
      categories = await categories.filter(category => category.type === type);
    }

    console.log(searchBy, 'charactersearchBy');
    return await search(categories, ['name'], searchBy);
  }

  @Query(returns => Category)
  async category(
    @Arg('id', type => ID) id: string
  ): Promise<Category | undefined> {
    return await this.categoriesCollection.find(category => category.id === id);
  }

  @Query(returns => [Tag])
  async tags(): Promise<Tag[]>{
    var db = connectDB();
    var res = db.query(`SELECT * FROM tags`);
    var temp:Tag[] = [];
    for(let i = 0; i < res.length; i++)
    {
      var entry : Tag = new Tag();
      entry.id = res[i].id;
      entry.name =  res[i].name;
      entry.slug = res[i].slug;
      entry.icon = res[i].icon;  
      temp.push(entry);
    }
    db.dispose();
    return temp;
  }
  
  @Mutation(returns => savedFile)
  async categoryImageUPload(@Arg('file', type => GraphQLUpload)  file:any) {
    console.log('Category image file uplading......');
    const response = await processUpload(file);
    return response;
  }
  
  /************** Creat new category. ****************/

  @Mutation(() => Category, { description: 'Create Category' })
  async createCategory(@Arg('category') category: AddCategoryInput): Promise<Category> {
    console.log(category);
    //[1]. connect the database.
    var db = connectDB();

    //[1.1]. If the request is for Product type, Insert new type into Tags.
    if(category.type == 'none'){
      db.query(`INSERT INTO tags (name, slug, icon, inserted_at, updated_at) VALUES('${category.name}', '${category.slug}', '${category.icon}', NOW(), NOW())`);
    }
    //[1.2]. Category.
    else
    {
      db.query(`INSERT INTO categories (slug, name, icon, tag_id, parent_id, inserted_at, updated_at)` 
            + ` VALUES('${category.slug}', '${category.name}', '${category.icon}', '${category.type}', NULL, NOW(), NOW())`);
      //[1.3]. Prepare the response data.
      var result = db.query(`SELECT * FROM categories WHERE name = '${category.name}'`);
      category.id = result[0].id;
    }
    //[1.4]. Close the connection.
    db.dispose();
    return await category;
  }
}
