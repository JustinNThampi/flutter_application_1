import 'package:flutter/material.dart';
import 'Values.dart';

class GridViewUi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30,right: 5,left: 5),
        child: GridView.builder(
          itemCount: GIcons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            childAspectRatio: 2.5
          ),
          itemBuilder: (context, index) =>
            Card(        
              elevation: 10,   
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              color: colour[index],
              child: Center(
                child: ListTile(
                  leading: Icon(GIcons[index],size: 50,),
                  title: Text('Heart\nShaker'),
                ),
              ),
            )
        ),
      )
    );
  }
}