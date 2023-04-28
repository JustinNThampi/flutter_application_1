import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Login_Signup_UI/Home.dart';
import 'SharedPrefEx.dart';

class ShrPffRegistration extends StatefulWidget {
  const ShrPffRegistration({super.key});

  @override
  State<ShrPffRegistration> createState() => _ShrPffRegistrationState();
}

class _ShrPffRegistrationState extends State<ShrPffRegistration> {

  late SharedPreferences data;
  TextEditingController name_controller = TextEditingController();
  TextEditingController username_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  late bool newuser;

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
              "REgistration Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: name_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Name"),
              ),
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
                onPressed: () async {
                  data = await SharedPreferences.getInstance();

                  String username = username_controller.text;
                  String password = password_controller.text;
                  String name = name_controller.text;

                  if (username != '' && password != '') {
                    print("Registration Success");

                    data.setString("name", name);
                    data.setString("username", username);
                    data.setString("password", password);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginSamp()));
                  }
                },
                child: Text("Registser"))
          ],
        ),
      ),
    );
  }
}