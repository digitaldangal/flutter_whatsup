import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_whatsup/whatsapp_home.dart';
import 'package:camera/camera.dart';
List<CameraDescription> cameras;
Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "FlutterWhatsApp",
      theme: new ThemeData(
        primaryColor:new Color(0xff075e54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(cameras),
    );

  }
}