import 'package:flutter/material.dart';

class ProfileSUI extends StatelessWidget {
  const ProfileSUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("Profile")),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: Stack(
        children: [
          Container(color: Colors.white, height: 400,),
          Positioned(
            child: Container(
              //color: Colors.green, 
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/image/BI2.jpg"),fit: BoxFit.cover)
              ),)),
          Positioned(child: CircleAvatar(radius: 30, backgroundColor: Colors.red, child: Icon(Icons.message,color: Colors.white,),),top: 170,left: 20,),
          Positioned(child: CircleAvatar(radius: 30, backgroundColor: Colors.blue, child: Icon(Icons.add,color: Colors.white,),),top: 170,right: 20,),
          Positioned(child: CircleAvatar(radius: 74, backgroundColor: Colors.white,),top: 126,left: 121,),
          Positioned(child: CircleAvatar(radius: 70, backgroundColor: Colors.white, backgroundImage: AssetImage("assets/image/DP2.jpg"),),top: 130,left: 125,),
          Positioned(child: Column(
            children: [
              Text("David Beckham",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              Text("model / super star",style: TextStyle(color: Colors.blue),)
            ],
          ),top: 290,left: 125,)
        ],
      ),
    );
  }
}