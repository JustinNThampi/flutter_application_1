import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Grid4(),
//   ));
// }

class Grid4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid 4"),
        ),
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ),
            childrenDelegate: SliverChildBuilderDelegate((ctx, index) {
              return const Card(
                child: Image(
                  image: AssetImage("assets/image/london.jpg"),
                ),
              );
            },
            childCount: 10,
            // SliverChildListDelegate(
            //   [
            //     Card(child: Center(child: Icon(Icons.ac_unit,size: 30,),),),
            //     Card(child: Center(child: Icon(Icons.ac_unit,size: 30,),),),
            //     Card(child: Center(child: Icon(Icons.ac_unit,size: 30,),),),
            //     Card(child: Center(child: Icon(Icons.ac_unit,size: 30,),),),
            //   ]
            // ),
        )    
      ) 
    );
  }
}