// This sample shows creation of a [Card] widget that can be tapped. When
// tapped this [Card]'s [InkWell] displays an "ink splash" that fills the
// entire card.

import 'package:flutter/material.dart';
import 'camera.dart';
import 'dart:async';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  //O async só precisa estar presente no método que vai capturar a lista de cameras
  cameras = await availableCameras();
  runApp(MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => _BuildConteudo();
}

class _BuildConteudo extends State<MyApp> {
  @override
  Widget build(BuildContext context) => _buildConteudo(context);

  Widget _buildConteudo(context) {
    //final mediaQuery = MediaQuery.of(context);
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 60.0, bottom: 60.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: new Directionality(
                textDirection: TextDirection.ltr,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Tire uma foto da ',
                      ),
                      TextSpan(
                        text: 'documentação ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'do veículo',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Camera(
                cams: cameras,
              ),
            ),
          ]),
    );
  }
}
