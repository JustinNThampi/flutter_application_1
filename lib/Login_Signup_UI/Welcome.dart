import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'LoginScren.dart';
import 'SigninScreen.dart';


// void main(){
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       useInheritedMediaQuery: true,
//       home: WelcomScreen(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }


class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181a4c),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 100, 100, 0),
                  child: Image.asset(
                    'assets/icons/LSI1.png',
                    height: 250,
                    width: 350,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "Hi There !!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  'To keep connect with us please select your option',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100, bottom: 90),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          }, child: Text('LOG IN')),
                        ),
                        Divider(),
                        SizedBox(
                          height: 50,
                          width: 250,
                          child: ElevatedButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SigninScreen()));
                          }, child: Text('SIGN IN')),
                        )
                      ],
                  ),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image(height: 20,width: 20, image: AssetImage('assets/icons/FB.png'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image(height: 20,width: 20, image: AssetImage('assets/icons/INSTA.png'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image(height: 20,width: 20, image: AssetImage('assets/icons/YT.png'),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image(height: 20,width: 20, image: AssetImage('assets/icons/TWT.png'),),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}