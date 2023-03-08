import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class Login_With_Validation extends StatefulWidget {
  const Login_With_Validation({super.key});

  @override
  State<Login_With_Validation> createState() => _Login_With_ValidationState();
}

class _Login_With_ValidationState extends State<Login_With_Validation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(
            colors: [
              Colors.red, 
              Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  'assets/icons/ufo.png',
                  width: 200,
                  height: 200,),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box_sharp),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Username',
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100))
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    helperStyle: TextStyle(color: Colors.black),
                    helperText: 'Password length should be greater than 6',
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100))
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 20),
                child: SizedBox(
                  height: 40,
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Login')),
                ),
              ),
              
              TextButton(
                onPressed: (){},
                child: Text(
                  'Not a User?? SignUp Here!!',
                  style: TextStyle(
                  fontSize: 10),))
            ],),
        ),
      ),
    );
  }
  
}