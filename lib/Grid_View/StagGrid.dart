import 'package:flutter/material.dart';
import 'package:flutter_application_1/Grid_View/CustomWidgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggGrid extends StatelessWidget {
  const StaggGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 3, 
                mainAxisCellCount: 2, 
                child: CustomWidget(
                  bgColor: Colors.red,
                  title: const Text('Hellow',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),), 
                  onpress: () {}, 
                  icon: const Icon(Icons.ac_unit)) 
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 1, 
                child: Card(color: Colors.black,) 
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1, 
                mainAxisCellCount: 4, 
                child: Card(color: Colors.orange,) 
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2, 
                mainAxisCellCount: 2, 
                child: Card(color: Colors.green,) 
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1, 
                mainAxisCellCount: 1, 
                child: Card(color: Colors.yellow,) 
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1, 
                mainAxisCellCount: 1, 
                child: Card(color: Colors.blue,) 
              ),
            ],
          ),
        ),
      ),
    );
  }
}