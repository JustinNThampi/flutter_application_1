import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Home.dart';


// void main(){
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       useInheritedMediaQuery: true,
//       home: SigninScreen(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }


class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

 GlobalKey<FormState> formkey = GlobalKey();  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181a4c),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
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
                      "WELCOME BUDDY",
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
                      'Please Fill Your Data Here',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Your Email ID',
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.person,color: Colors.white,)
                      ),
                      validator: (usename){
                        if(usename!.isEmpty){
                          return "Enter a Valid Email ID ";
                        }else{
                          return null;
                        }
                      }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Your Mobile Number',
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.phone,color: Colors.white,)
                      ),
                      validator: (number){
                        if(number!.isEmpty || number.length <10){
                          return "Enter a Valid Mobile Number";
                        }else{
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter Your Password',
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.lock,color: Colors.white,) 
                      ),
                      validator: (password){
                        if(password!.isEmpty || password.length <6){
                          return "Enter a Valid Password";
                        }else{
                          return null;
                        }
                      }
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 10),
                    child: SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          final valid = formkey.currentState!.validate();
                          if(valid){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                          }  
                        },
                         child: Text('SIGN IN')),
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
                      ]
                    )
                  )      
                ]
              ),
            ),
          )    
        )    
      )
    ); 
  }
}