import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';


void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home : LoginPage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'assets/icons/profile1.png',
                width: 200,
                height: 200,),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box_sharp),
                  hintText: 'Username',
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100))
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  helperText: 'Password length should be greater than 6',
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility_off),
                  hintText: 'Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100))
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Login')),
            ),
            
            TextButton(
              onPressed: (){},
              child: Text(
                'Not a User?? SignUp Here!!',
                style: TextStyle(
                fontSize: 10),))
          ],),
      ),
    );
  }
  
}