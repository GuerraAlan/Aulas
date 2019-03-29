import 'package:flutter/material.dart';

import './texto.dart';

class TextControl extends StatefulWidget{
  String titulo;

  TextControl({this.titulo = 'titulo'});

  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }

}

class _TextControlState extends State<TextControl>{

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      RaisedButton(
        child: Text('Alterar Texto'),
        onPressed: () {
          setState(() {
            widget.titulo = '${widget.titulo}\nDiego é uma bixona';
          });
        },
      ),
      Texto(titulo: widget.titulo),
    ],);
  }

}