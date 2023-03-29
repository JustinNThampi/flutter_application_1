import 'package:flutter/material.dart';


class Grid5 extends StatelessWidget {
  const Grid5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 120,
        children: const [
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
          Card(child: Center(child: Icon(Icons.ac_unit,size: 50,),),),
        ],
      ),
    );
  }  
}