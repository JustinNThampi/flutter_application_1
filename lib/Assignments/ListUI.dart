import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListUi extends StatelessWidget {
  const ListUi({super.key});

  @override
  Widget build(BuildContext context) {

    var name = ['Delhi','London','Vancouver','New York'];
    var contry = ['india','Britain','Canda','USA'];
    var Population = ['Population: 19 mill','Population: 8 mill','Population: 2.4 mill','Population: 8.1 mill'];
    var image = [
      'assets/image/Delhi.jpg',
      'assets/image/london.jpg',
      'assets/image/Vancouver.jpg',
      'assets/image/NewYork.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFfdc109),
        title: Text('Cites around world',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: List.generate(4, (index) => 
            Card(
              child: ListTile(
                leading: Image.asset(image[index],fit: BoxFit.cover,width: 100,),
                title: Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(contry[index]),
                    Text(Population[index])
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}