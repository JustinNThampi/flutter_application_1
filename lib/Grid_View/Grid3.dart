import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Grid3(),
//   ));
// }

class GridView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Grid 3"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(20, (index) {
            return Card(
              child: Column(
                children: [
                  Image(image: AssetImage("assets/image/DP2.jpg")),
                  Center(child: Text("Profile Picture",))
                ],
              ),
            );
          }),
        ));
  }
}