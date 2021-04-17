import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:facemoj/screens/face_detection_screen.dart';
import 'package:facemoj/screens/photo_picker_screen.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: PhotoPickerScreen.id,
    routes: {
      PhotoPickerScreen.id: (context) => PhotoPickerScreen(cameras: cameras),
      FaceDetectionScreen.id: (context) => FaceDetectionScreen(),
    },
  ));
}
