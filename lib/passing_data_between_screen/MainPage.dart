import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing_data_between_screen/productList.dart';
import 'DummyData.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ProductMain(),
//     routes: {
//       'secondpage' : (context) => ProductList(),
//     },
//   ));
// }

class ProductMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: dummyProducts.map((product) =>
          TextButton(
            onPressed: () => gotoNext(context, product["id"]), 
            child: Text(
              "${product["name"]}"))
        ).toList()
      ),
    );
  }
}

void gotoNext(BuildContext context, product) {
  Navigator.of(context).pushNamed('secondpage', arguments: product);
}