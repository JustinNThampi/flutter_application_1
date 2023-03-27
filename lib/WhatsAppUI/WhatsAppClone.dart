import 'package:flutter/material.dart';
import 'package:flutter_application_1/WhatsAppUI/WhatsAppStatus.dart';
import 'WhatsAppCall.dart';
import 'WhatsAppCamera.dart';
import 'WhatsAppChat.dart';

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {},
          child: Icon(Icons.chat,color: Colors.white,),
          backgroundColor: Color(0xFF00897b),
       ),
        appBar: AppBar(
         backgroundColor: Color(0xFF00897b),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('WhatsApp Clone',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 26,)),
            Icon(Icons.more_vert)
         ],
         bottom: TabBar(
          tabs: [
            Tab(child: Icon(Icons.camera_alt_rounded),),
            Tab(child: Text('CHATS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            Tab(child: Text('STATUS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
            Tab(child: Text('CALLS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)
          ],),
        ),
        body: TabBarView(
          children: [
            WhatsAppCamera(),
            WhatsAppChat(),
            WhatsAppStatus(),
            WhatsAppCall()
          ],
        ),
      )  
     );
   }  
}      