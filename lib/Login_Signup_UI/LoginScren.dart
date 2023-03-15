import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_Signup_UI/SigninScreen.dart';
import 'Home.dart';


// void main(){
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       useInheritedMediaQuery: true,
//       home: LoginScreen(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181a4c),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(80, 100, 100, 0),
                  child: Image.asset(
                    'assets/icons/LSI1.png',
                    height: 200,
                    width: 300,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "WELCOME BACK !!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Please enter your user name and password',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Your Username',
                      labelStyle: TextStyle(color: Colors.grey),
                      //hintText: 'Your Username',
                      prefixIcon: Icon(Icons.person,color: Colors.white,)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter Your Password',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.lock,color: Colors.white,) 
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 10),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                       child: Text('LOG IN')),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account ?",style: TextStyle(color: Colors.white),),
                    TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SigninScreen()));
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Wrap(
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
                  ),
                )
              ]
            )
          )
        )
      )        
    );  
  }
}