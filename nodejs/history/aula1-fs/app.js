const fs = require('fs');

const file='notes.txt';
const text='\nValor maior';
const textoOriginal = fs.readFileSync(file).toString();

fs.appendFileSync(file, text);

const textoAlterado = fs.readFileSync(file).toString();
console.log(textoAlterado);
console.log(textoOriginal+text);
console.log(textoAlterado == (textoOriginal+text));
//fs.writeFileSync('notes.txt', '\nvalor escrito2');

