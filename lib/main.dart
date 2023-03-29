import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/ContactUI.dart';
import 'package:flutter_application_1/ListCustom.dart';
import 'package:flutter_application_1/ListWithSeperator.dart';
import 'package:flutter_application_1/stackex.dart';
import 'Assignments/HotelDetailUI.dart';
import 'Grid_View/Grid.dart';
import 'Grid_View/Grid2.dart';
import 'HomeScreen.dart';
import 'Assignments/ListUI.dart';
import 'Login_Signup_UI/Splash.dart';
import 'SplashPage.dart';
import 'Login_Page.dart';
import 'LoginPageWIthValidation.dart';
import 'Grid_View/StagGrid.dart';
import 'TabBar.dart';
import 'WhatsAppUI/WhatsAppChat.dart';
import 'WhatsAppUI/WhatsAppClone.dart';
import 'WhatsAppUI/WhatsAppStatus.dart';
import 'bottomNavigation.dart';
import 'convexbot.dart';
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
      //home: BottomBar1(),
      //home: ListUi(),
      //home: WhatsAppClone(),
      //home: WhatsAppChat(),
      //home: WhatsAppStatus(),
      //home: Stack_Ex(),
      //home: ConvexBottomBar(),
      //home: GridViewDemo(),
      //home: GridViewDemo2(),
      //home: Grid3(),
      //home: Grid4(),
      //home: Grid5(),
      //home: StaggGrid(),
      home: HotelDetailUi(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}