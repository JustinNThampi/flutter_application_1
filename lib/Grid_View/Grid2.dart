import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MaterialApp(
//     home: GridViewDemo(),
//   ));
// }

class GridViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid 2"),
        ),
        body: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 5, 
                mainAxisSpacing: 5),
            itemBuilder: (ctx, index) {
              return Card(
                color: Colors.green,
                child: Center(child: Text("Grid $index",style: GoogleFonts.aBeeZee(fontSize: 30),)),
              );
            }));
  }
}