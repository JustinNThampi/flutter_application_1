import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nav Drawer'),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFff9336),
                Color(0xFFff4256),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              )
          ),
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 30),
                  child: Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage('assets/image/DP2.jpg'),),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Justin N Thampi',style: TextStyle(fontSize: 10),),
                            Text('justinnthampi@gmail.com',style: TextStyle(fontSize: 10),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 8),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text("Dashboard"),
                    ),
                    const ListTile(
                      leading: Icon(Icons.man),
                      title: Text("Leads"),
                    ),const ListTile(
                      leading: Icon(Icons.people),
                      title: Text("Clients"),
                    ),const ListTile(
                      leading: Icon(Icons.rocket),
                      title: Text("Projects"),
                    ),const ListTile(
                      leading: Icon(Icons.handshake),
                      title: Text("Parners"),
                    ),const ListTile(
                      leading: Icon(Icons.subscriptions),
                      title: Text("Subscrition"),
                    ),const ListTile(
                      leading: Icon(Icons.money),
                      title: Text("Payments"),
                    ),const ListTile(
                      leading: Icon(Icons.verified_user),
                      title: Text("User"),
                    ),const ListTile(
                      leading: Icon(Icons.book),
                      title: Text("Library"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: SizedBox(
                        height: 30,
                        width: 200,
                        child: ElevatedButton(onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFfe614e),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ), 
                          child: const Text('Logout')),
                      ),
                    )
                  ],
                ),
              )    
            ],
          ),
        ),
      ),
    );
  }
}