const fs = require('fs')

// const book = {
//     title: 'livro',
//     author: 'autor' 
// };

// const bookJSON = JSON.stringify(book);

// fs.writeFileSync('1-json.json', bookJSON);

// const data = JSON.parse(fs.readFileSync('1-json.json').toString());
// console.log(data.title);

var person = JSON.parse(fs.readFileSync("1-json.json").toString())

person.age = person.age + 1;

person.name = person.name + ".";

fs.writeFileSync("1-json.json", JSON.stringify(person));