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
            Icon(Icons.camera_alt_rounded),
            IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 26,)),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child: Text('New group')),
                PopupMenuItem(child: Text('New broadcast')),
                PopupMenuItem(child: Text('Link devices')),
                PopupMenuItem(child: Text('Starred messages')),
                PopupMenuItem(child: Text('Payments')),
                PopupMenuItem(child: Text('Settings')),
              ];
            })
         ],
         bottom: TabBar(
          labelPadding: EdgeInsets.zero,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.white,
          tabs: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .1,
              child: Tab(child: Icon(Icons.camera_alt_rounded),)),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: Tab(child: Text('CHATS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: Tab(child: Text('STATUS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),)),
            SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              child: Tab(child: Text('CALLS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),))
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