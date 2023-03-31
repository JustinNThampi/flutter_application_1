import 'package:flutter/material.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nav Drawer"),
      ),
      drawer:
      // Theme(
      //   data: Theme.of(context).copyWith(canvasColor: Colors.green),
      Drawer(
          child: Container(
              decoration: const BoxDecoration(gradient: LinearGradient(
                  colors: [
                    Colors.green,
                    Colors.yellowAccent,
                    Colors.white
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight
              )),
            child: ListView(
              children: const [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/BI1.jpg"))),
                  accountName: Text("Justin N Thampi"),
                  accountEmail: Text("justinthampi@gmail.com"),
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/apple.png"),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/orenge.png"),
                    ),
                  ],
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/profile1.png"),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
              ],
            ),
          ),
        ),

    );
  }
}