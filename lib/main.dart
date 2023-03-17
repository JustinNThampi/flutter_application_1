import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ContactUI.dart';
import 'package:flutter_application_1/WContactUI.dart';
import 'HomeScreen.dart';
import 'Login_Signup_UI/Splash.dart';
import 'SplashPage.dart';
import 'Login_Page.dart';
import 'LoginPageWIthValidation.dart';
import 'WCallsUI.dart';
import 'WChatUI.dart';
import 'WStatusUI.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      //home : Splashh(),
      //home : LoginPage(),
      //home : Login_With_Validation(),
      //home : HomeScreen(),
      //home: Splash(),
      //home: Contact(),
      //home: WContact(),
      //home: WChat(),
      //home: WStatus(),
      home: WCall(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}