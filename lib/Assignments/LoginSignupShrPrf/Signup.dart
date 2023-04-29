import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/LoginSignupShrPrf/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPSignup extends StatefulWidget {
  const SPSignup({super.key});

  @override
  State<SPSignup> createState() => _SPSignupState();
}

class _SPSignupState extends State<SPSignup> {

  late SharedPreferences details;
  TextEditingController email_controler = TextEditingController();
  TextEditingController user_controler = TextEditingController();
  TextEditingController phone_controler = TextEditingController();
  TextEditingController pswd_controler = TextEditingController();
  TextEditingController gender_controler = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();
  bool showPass = true;   

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/icons/signup.png",height: 200,width: 200,),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Sign Up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: email_controler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      labelText: "Email",
                      suffixIcon: Icon(Icons.mail)
                    ),
                    validator: (email){
                        if(email!.isEmpty){
                          return 'enter a valid Email address';
                        }else{
                          return null;
                        }
                      },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: user_controler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      labelText: "User Name",
                      suffixIcon: Icon(Icons.person_2_rounded)
                    ),
                    validator: (username){
                      if(username!.isEmpty){
                        return 'enter a username';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: phone_controler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      labelText: "Phone Number",
                      helperText: "Phone Number Should contain 10 digits",
                      suffixIcon: Icon(Icons.phone)
                    ),
                    validator: (phonenuber){
                      if(phonenuber!.isEmpty || phonenuber.length < 10){
                        return 'enter a valid phone number';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: pswd_controler,
                    obscureText: showPass,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      labelText: "Password",
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
                    ),
                    validator: (password){
                      if(password!.isEmpty){
                        return 'enter the password';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: gender_controler,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      labelText: "Gender",
                      suffixIcon: Icon(Icons.fingerprint)
                    ),
                    validator: (gender){
                      if(gender!.isEmpty){
                        return "enter a valid Gender";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 270,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        onPressed: () async{
                          details = await SharedPreferences.getInstance();
          
                          String Email = email_controler.text;
                          String UserName = user_controler.text;
                          String Phone = phone_controler.text;
                          String Password = pswd_controler.text;
                          String Gender = gender_controler.text;
          
                          final valid = formkey.currentState!.validate();
          
                          if(Email != '' && Password != '' && valid){
                            print("Registration successful");
          
                          details.setString("email", Email);
                          details.setString("password", Password);
          
                          Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => SPLogin()));
                          
                          }
                        }, 
                        child: Text("Sign Up",style: TextStyle(color: Colors.black),))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => SPLogin() ));
                      }, child: Text("Already Have an Account ? Login",style: TextStyle(color: Colors.black),)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}