import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/LoginSignupShrPrf/HomePage.dart';
import 'package:flutter_application_1/Assignments/LoginSignupShrPrf/Signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPLogin extends StatefulWidget {
  const SPLogin({super.key});

  @override
  State<SPLogin> createState() => _SPLoginState();
}

class _SPLoginState extends State<SPLogin> {

  late SharedPreferences details;
  TextEditingController email_controler = TextEditingController();
  TextEditingController pswd_controler = TextEditingController();
  late bool newuser;

  late String Email_data;
  late String Pswd_data;

  GlobalKey<FormState> formkey = GlobalKey();
  bool showPass = true;

  @override
  void initState() {
    getValue();
    checkValue();
    super.initState();
  }

  void getValue() async{
    details = await SharedPreferences.getInstance();

    setState(() {
      Email_data = details.getString("email")!;
      Pswd_data = details.getString("password")!;
    });
  }  

  void checkValue() async{
    details = await SharedPreferences.getInstance();
    newuser = (details.getBool("newuser") ?? true);

    // if(newuser == false){
    //   Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/icons/Login.png",height: 200,width: 200,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
                      return "enter a password";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {}, 
                      child: Text("Forgot Password ?",style: TextStyle(color: Colors.red),),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      onPressed: (){
                        String Email = email_controler.text;
                        String Password = pswd_controler.text;

                        final valid = formkey.currentState!.validate();
        
                        if(Email_data != '' &&
                           Pswd_data != ''&&
                           Email == Email_data &&
                           Password == Pswd_data &&
                           valid 
                          ){
                            print("Login Success");
        
                            details.setBool("newuser", false);
                            print(Email);
        
                            Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()));
                          }else{
                            print("email or password is incorrect");
                          }
                        
                      }, 
                      child: Text("Login",style: TextStyle(color: Colors.black),))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SPSignup()));
                  }, 
                  child: Text("Don't You Have an Account ? SignUp",style: TextStyle(color: Colors.black),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}