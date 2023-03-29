import 'package:flutter/material.dart';

class Stack_Ex extends StatelessWidget {
  const Stack_Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.green,height: 300,width: 300,),
            Positioned(child: Container(color: Colors.red,height: 200,width: 200,),left: 50,top: 50,),
            Positioned(child: Container(color: Colors.yellowAccent,height: 100,width: 100,),left: 100,top: 100,),
            Positioned(child: Container(color: Colors.blue,height: 50,width: 50,),left: 125,top: 125,),
          ],
        ),
      ),
    );
  }
}