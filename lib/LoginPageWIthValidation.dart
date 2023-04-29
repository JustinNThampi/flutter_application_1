import 'package:flutter/material.dart';
import 'package:flutter_application_1/RegisterPage.dart';
import 'HomeScreen.dart';

class Login_With_Validation extends StatefulWidget {
  const Login_With_Validation({super.key});

  @override
  State<Login_With_Validation> createState() => _Login_With_ValidationState();
}

class _Login_With_ValidationState extends State<Login_With_Validation> {
  
  GlobalKey<FormState> formkey = GlobalKey();         //for fetching the 
  bool showPass = true;                               //for checking the password is valid or not

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
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
                      if(password!.isEmpty || password.length <6){
                        return "enter a valid password";
                      }else{
                        return null;
                      }
                    },
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        }
                      },
                      child: Text('Login')),
                  ),
                ),
                
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                  },
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