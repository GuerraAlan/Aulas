import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

List<CameraDescription> cameras;

class Camera extends StatefulWidget {

  Camera({List<CameraDescription> cams}){
    cameras = cams;
  }

  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<Camera> {
  CameraController controller;

  void metodos() async{

      final path = join((await getApplicationDocumentsDirectory()).path,'${DateTime.now()}.png');
      await controller.takePicture(path);
      print(path);

  }

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[0], ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return new GestureDetector(
      child: AspectRatio(
          aspectRatio:
          controller.value.aspectRatio,
          child: CameraPreview(controller)),
      onTap: metodos,
    );

  }
}