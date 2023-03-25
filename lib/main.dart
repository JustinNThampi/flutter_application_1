import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ContactUI.dart';
import 'package:flutter_application_1/ListCustom.dart';
import 'package:flutter_application_1/ListWithSeperator.dart';
import 'package:flutter_application_1/WhatsAppUI/WContactUI.dart';
import 'HomeScreen.dart';
import 'Login_Signup_UI/Splash.dart';
import 'SplashPage.dart';
import 'Login_Page.dart';
import 'LoginPageWIthValidation.dart';
import 'TabBar.dart';
import 'WhatsAppUI/WCallsUI.dart';
import 'WhatsAppUI/WChatUI.dart';
import 'WhatsAppUI/WStatusUI.dart';
import 'bottomNavigation.dart';
import 'listWithBuilder.dart';

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
      //home: WCall(),
      //home: MyTab(),
      //home: List_Builder(),
      //home: List_Custom(),
      //home: List_Separator(),
      home: BottomBar1(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}