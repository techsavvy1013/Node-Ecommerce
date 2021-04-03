import { plainToClass } from "class-transformer";
import connectDB from "../../../db";
import User from "./user.type";
import { split } from 'lodash';
import Address from './address.type';
import Contact from "./contact.type";
import Card from "./card.type";

const loadUsers = (): User[] => {
  
  var db = connectDB();
  var res = db.query(`SELECT * FROM get_user_profiles`);
  var temp:User[] = [];
  for(var i = 0; i < res.length; i++){
    var user = new User();
    user.id = res[i].id;
    user.email = res[i].email;
    user.name = res[i].name;
    user.password = res[i].password;
    //console.log(user.name);
    var t1 = split(res[i].address_ids,'^^^');
    var t2 = split(res[i].addresses, '^^^');
    var t3 = split(res[i].titles, '^^^');
    user.address = [];
    for(var j = 0; j < t1.length; j++)
    {
      var address = new Address();
      address.id = t1[j];
      address.info = t2[j];
      address.name = t3[j];
      if(res[i].primary_address == address.id)
        address.type = 'primary';
      else
        address.type = 'secondary';

      //console.log(address);
      user.address.push(address);
    }
   
    t1 = split(res[i].contact_ids,'^^^');
    t2 = split(res[i].numbers, '^^^');
    user.contact = [];
    for(var j = 0; j < t1.length; j++)
    {
      var contact = new Contact();
      contact.id = t1[j];
      contact.number = t2[j];
      if(res[i].primary_contact == contact.id)
        contact.type = 'primary';
      else
        contact.type = 'secondary';
      user.contact.push(contact);
      //console.log(contact.number);
    }

    t1 = split(res[i].card_ids,'^^^');
    t2 = split(res[i].card_types, '^^^');
    t3 = split(res[i].cards, '^^^');
    user.card = [];
    for(var j = 0; j < t1.length; j++)
    {
      var card = new Card();
      card.id = t1[j];
      card.cardType = t2[j];
      card.name = res[i].name;
      card.lastFourDigit = Number(t3[j]);
      if(res[i].primary_card == card.id)
        card.type = 'primary';
      else
        card.type = 'secondary';
      user.card.push(card);
     // console.log(card);
    }
    //console.log(user, 'user');
    temp.push(user);
  }

  return temp;
  // var temp = [
  //   {
  //     id: 1,
  //     name: "Jhon Doe Smith",
  //     email: "jhondDoe@demo.com",
  //     address: [
  //       {
  //         id: "12312",
  //         type: "primary",
  //         name: "Home",
  //         info: "27 Street, 2569 Heritage Road Visalia, CA 93291"
  //       },
  //       {
  //         id: "23423",
  //         type: "secondary",
  //         name: "Office",
  //         info: "33 Baker Street, Crescent Road, CA 65746"
  //       }
  //     ],
  //     contact: [
  //       {
  //         id: "88234",
  //         type: "primary",
  //         number: "202-555-0191"
  //       },
  //       {
  //         id: "23439",
  //         type: "secondary",
  //         number: "202-555-0701"
  //       }
  //     ],
  //     card: [
  //       {
  //         id: "179012",
  //         type: "primary",
  //         cardType: "paypal",
  //         name: "Jhon Doe Smith",
  //         lastFourDigit: 2349
  //       },
  //       {
  //         id: "987234",
  //         type: "secondary",
  //         cardType: "master",
  //         name: "Jhon Doe Smith",
  //         lastFourDigit: 8724
  //       },
  //       {
  //         id: "424987",
  //         type: "secondary",
  //         cardType: "visa",
  //         name: "Jhon Doe Smith",
  //         lastFourDigit: 4535
  //       },
  //       {
  //         id: "455599",
  //         type: "secondary",
  //         cardType: "visa",
  //         name: "Jhon Doe Smith",
  //         lastFourDigit: 4585
  //       }
  //     ]
  //   },
  //   {
  //     id: 2,
  //     name: "Jonathon Parker Doe ",
  //     email: "jpdoe@demo.com",
  //     address: [
  //       {
  //         id: "28764",
  //         type: "primary",
  //         name: "Home",
  //         info: "43 Street, 2341 Road Visalia, Ny 24252"
  //       },
  //       {
  //         id: "98242",
  //         type: "secondary",
  //         name: "Office",
  //         info: "29 Eve Street, 543 Evenue Road, Ny 87876"
  //       }
  //     ],
  //     contact: [
  //       {
  //         id: "12491",
  //         type: "primary",
  //         number: "202-555-0191"
  //       },
  //       {
  //         id: "12462",
  //         type: "secondary",
  //         number: "202-555-0191"
  //       }
  //     ],
  //     card: [
  //       {
  //         id: "345968",
  //         cardType: "paypal",
  //         name: "Jonathon Parker Doe",
  //         lastFourDigit: 8723
  //       },
  //       {
  //         id: "989433",
  //         cardType: "master",
  //         name: "Jonathon Parker Doe",
  //         lastFourDigit: 4352
  //       },
  //       {
  //         id: "787692",
  //         cardType: "visa",
  //         name: "Jonathon Parker Doe",
  //         lastFourDigit: 2398
  //       }
  //     ]
  //   }
  // ];

  // var db =  connectDB();

  // for(var i = 0; i < temp.length; i++){
  //   db.query(`INSERT INTO users (id,name,email,inserted_at,updated_at) VALUE('${temp[i].id}', '${temp[i].name}', '${temp[i].email}', NOW(), NOW())`);
  //   for(var j = 0;  j < temp[i].address.length; j++)
  //   {
  //     db.query(`INSERT INTO address (user_id, title, address) VALUE('${temp[i].id}', '${temp[i].address[j].name}', '${temp[i].address[j].info}')`)
  //   }

  //   for(var j = 0;  j < temp[i].contact.length; j++)
  //   {
  //     db.query(`INSERT INTO contact (user_id, contact_number) VALUE('${temp[i].id}', '${temp[i].contact[j].number}')`);
  //   }

  //   for(var j = 0;  j < temp[i].card.length; j++)
  //   {
  //     db.query(`INSERT INTO card (user_id, card, type) VALUE('${temp[i].id}', '${temp[i].card[j].lastFourDigit}', '${temp[i].card[j].cardType}')`);
  //   }
  // }

  //return plainToClass(User, temp);
};

export default loadUsers;
