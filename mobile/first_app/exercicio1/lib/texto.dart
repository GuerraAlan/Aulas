import 'package:flutter/material.dart';

class Texto extends StatelessWidget{
  final String titulo;

  Texto({this.titulo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(titulo)
        ],
      ),
    );
  }

}