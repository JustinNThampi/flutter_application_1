import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'SplashPage.dart';
import 'Login_Page.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //home : Splashh(),
      home : LoginPage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}