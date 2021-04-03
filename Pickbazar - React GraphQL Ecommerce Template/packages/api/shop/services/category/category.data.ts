import Category from './category.type';
import { plainToClass } from 'class-transformer';
import connectDB from '../../../db';
import { split } from 'lodash';

const fs = require('fs')
const loadCategories = (): Category[] => {

  var temp:Category[] = [];
  var db = connectDB();
  var res = db.query(`SELECT * FROM get_categories`);
  for(let i = 0; i < res.length; i++)
  {
    var entry = new Category();
    entry.id = res[i].id
    entry.title = res[i].name
    entry.slug = res[i].slug
    entry.type = res[i].type
    entry.icon = res[i].icon
    entry.children = [];
    let child_ids = split(res[i].child_ids, '^^^');
    let child_titles = split(res[i].child_names, '^^^');
    let child_slugs = split(res[i].child_slugs, '^^^');
    //let child_icons = split(res[i].child_icons, '^^^');
    for(let j = 0; j < child_ids.length; j++)
    {
      var ent = new Category();
      ent.id = Number(child_ids[j]);
      ent.title = child_titles[j];
      ent.slug = child_slugs[j];
      ent.type = res[i].type;
      entry.children.push(ent);
    }
    temp.push(entry);
  } 
  db.dispose();
  return temp;
};

export default loadCategories;
