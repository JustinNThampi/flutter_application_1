import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid 1'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 200,
        ),
        children: [
          Image.asset("assets/image/DP1.webp"),
          Image.asset('assets/image/DP3.jpg'),
          Image.asset('assets/image/DP4F.jpg'),
          Image.asset('assets/image/DP5.jpg')
        ],
      ),
    );
  }
}