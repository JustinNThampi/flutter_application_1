import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Welcome.dart';

// void main(){
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       useInheritedMediaQuery: true,
//       home: Splash(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomScreen()));
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF181a4c)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/LSI1.png',
                height: 300,
                width: 390,
                )
            ],
          ),
        ),
      ),
    );
  }
}