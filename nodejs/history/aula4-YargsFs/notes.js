const fs = require('fs');
const chalk = require('chalk');

const file = 'notes.json'


const getNotes = function () {
    return 'Your notes...'
}

const addNote = (title, body) => {
    const notes = loadNotes();
    if(notes.filter((note) => note.title === title).length === 0){
        notes.push({
            title: title,
            body: body
        });
        writeNotes(notes);
        console.log("nova Nota");
    } else {
        console.log("Nota existente");
    }
}

const removeNote = (title) => {
    const notes = loadNotes();
    const FilteredNotes = notes.filter((note) => note.title !== title)
    if(notes.length === FilteredNotes.length){
        console.log(chalk.red.inverse("no note found"));
    } else {
        writeNotes(FilteredNotes);
        console.log(chalk.green.inverse("Note Removed"));
    }
}

const loadNotes = () => {
    try{
        return JSON.parse(fs.readFileSync(file).toString());
    } catch (e){ 
        return [];
    }
}

const writeNotes = (notes) => fs.writeFileSync(file, JSON.stringify(notes));


module.exports = {
    getNotes: getNotes,
    addNote: addNote,
    removeNote: removeNote
}