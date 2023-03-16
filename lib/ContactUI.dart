import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {

    var name = ["Jhone", "Charlie", "Sebin","Appu","Shilpa"];
    // var image = [
    //   "assets/icons/apple.png",
    //   "assets/icons/orange.png",
    //   "assets/icons/banana.png",
    //   "assets/icons/grape.png",
    //   "assets/icons/mango.png"
    // ];
     var number = [1234567899,9876543211,1928376455,9357318654,9865438762];

    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts',style: TextStyle(fontSize: 30),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: List.generate(5, (index) => 
            Card(
              child: ListTile(
                title: Text(name[index], style: TextStyle(fontSize: 20),),
                subtitle: Text('${number[index]}'),
                //leading: Image.asset(image[index]),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                ),
              ),
            )
          )
        ),
      )
    );
  }
}