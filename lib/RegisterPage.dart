import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPageWIthValidation.dart';

import 'HomeScreen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  GlobalKey<FormState> formkey = GlobalKey();         //for fetching the 
  bool showPass = true;                               //for checking the password is valid or not
  var confirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration page'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
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
                     validator: (username){
                      if(username!.isEmpty){
                        return "enter a valid username";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: showPass,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      helperStyle: TextStyle(color: Colors.black),
                      helperText: 'Password length should be greater than 6',
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if(showPass){
                            showPass = false;
                          }else{
                            showPass = true;
                          }
                        });
                      }, icon: Icon(
                        showPass == true 
                        ? Icons.visibility 
                        : Icons.visibility_off),
                        ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))
                    ),
                    validator: (password){
                      confirmpass = password;
                      if(password!.isEmpty || password.length <6){
                        return "enter a valid password";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (cpass){
                      if(cpass != confirmpass.isEmpty || cpass!.isEmpty){
                        return "Password Missmatch";
                      }else{
                        return null;
                      }
                    },
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Confirm Password',
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))
                    )
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20),
                  child: SizedBox(
                    height: 40,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        final valid = formkey.currentState!.validate();
                        if(valid){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login_With_Validation()));
                        }
                      },
                      child: const Text('SignUp')),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}