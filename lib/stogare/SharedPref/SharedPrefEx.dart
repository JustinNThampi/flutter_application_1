import 'package:flutter/material.dart';
import 'RegistrationSP.dart';
import 'home.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MaterialApp(
//     home: LoginSamp(),
//   ));
// }

class LoginSamp extends StatefulWidget {
  @override
  State<LoginSamp> createState() => _LoginSampState();
}

class _LoginSampState extends State<LoginSamp> {

  late SharedPreferences data;
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  late bool newuser;

  late String uname;
  late String pswd;
  late String name;

  @override
  void initState() {
    checkUser();
    getvalue();
    super.initState();
  }

  void getvalue() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      name = data.getString('name')!;
      uname = data.getString('username')!;
      pswd = data.getString('password')!;
    });
  }

  void checkUser() async{
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool('newuser') ?? true);

    if(newuser == false){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Home()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Pref"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Login Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: username_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "UserName"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: TextField(
                controller: password_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String username = username_controller.text;
                  String password = password_controller.text;

                  if (uname != '' &&
                      pswd != '' &&
                      username == uname &&
                      password == pswd) {

                    print("Login Success");

                    data.setBool("newuser", false);
                    print(uname);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  }
                },
                child: Text("Log_In")
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShrPffRegistration()));
              }, 
              child: Text("Not a User? Register")
            ),
          ],
        ),
      ),
    );
  }
}