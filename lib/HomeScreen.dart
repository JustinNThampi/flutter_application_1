import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var Fruit = ["apple", "orange","banana","grape","mango"];
    var image = [
      "assets/icons/apple.png",
      "assets/icons/orange.png",
      "assets/icons/banana.png",
      "assets/icons/grape.png",
      "assets/icons/mango.png"
    ];
    var price = [100,200,300,400,500];


    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop',style: TextStyle(fontSize: 30),),
      ),
      body: ListView(
        children: List.generate(5, (index) => 
          Card(
            child: ListTile(
              title: Text(Fruit[index]),
              subtitle: Text('\$ ${price[index]}'),
              leading: Image.asset(image[index]),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
        )
        //[
          // Center(child: Text("My Fruits",style: TextStyle(fontSize: 30),),),
          // Card(
          //   child: ListTile(
          //     title: Text("Apple"),
          //     subtitle: Text('123 \$'),
          //     leading: Image.asset("assets/icons/apple.png"),
          //     trailing: Icon(Icons.shopping_cart),
          //   ),
          // ),
          // Card(child: ListTile(
          //     title: Text("Apple"),
          //     subtitle: Text('123 \$'),
          //     leading: CircleAvatar(
          //       backgroundImage: NetworkImage(
          //         "https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fimages%2Ffood%2Fapple&psig=AOvVaw39sKnYEqnHwA7zrHgt0Ruz&ust=1678518501369000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIjm4erm0P0CFQAAAAAdAAAAABAE"
          //       ),
          //     ),
          //     trailing: Icon(Icons.shopping_cart),
          //   ),
          // ),
          // Text("Apple"),
          // Text("Apple"),
          // Text("Apple"),
        //],
      ),
    );
  }
}