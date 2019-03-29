import 'package:flutter/material.dart';

import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar title'),
          ),
          body: Column(
            children: <Widget>[
              TextControl()
            ],
          )
      )
    );
  }
}

