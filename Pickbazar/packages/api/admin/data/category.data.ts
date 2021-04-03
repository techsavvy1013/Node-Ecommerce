import Category from '../services/category/category.type';
import { plainToClass } from 'class-transformer';
import connectDB from '../../db';

const fs = require('fs')
const loadCategories = (): Category[] => {

  var temp = [];
  var db = connectDB();
  var res = db.query(`SELECT * FROM get_categories`);
  for(let i = 0; i < res.length; i++)
  {
    var entry = {id:res[i].id, name:`${res[i].name}`,slug:`${res[i].slug}`, type:`${res[i].type}`, icon:`${res[i].icon}`, creation_date:`${res[i].inserted_at}`};
    temp.push(entry);
  }  
  db.dispose();
  var data:Category[] = plainToClass(Category,temp);
  return data;
};

export default loadCategories;
