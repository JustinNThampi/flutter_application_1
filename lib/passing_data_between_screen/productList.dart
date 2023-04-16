import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing_data_between_screen/DummyData.dart';


class ProductList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    //fetch the id from the previous page
    final id = ModalRoute.of(context)?.settings.arguments;

    //fetch the product fro dummydata corresponding to the id from the previous page
    final product = dummyProducts.firstWhere((prdt) => prdt["id"] == id);

    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.network(product["image2"]),
            Image.network(product["image"]),
            Text("${product['name']}"),
            Text("${product["description"]}")
          ],
        ),
      ),
    );
  }
}