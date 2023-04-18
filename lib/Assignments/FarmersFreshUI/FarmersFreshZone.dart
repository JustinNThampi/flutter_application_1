import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: SliverExx(),
//   ));
// }

class farmerFreshZone extends StatelessWidget {

  var List1 = ["OFFERS","VEGITABLES","FRUITS","EXOTIC","FRESH CUTS","NUTRITION CHARGES","PAKED FLAVORS","GOURMENT SALADS"];
  var Image1 = ["assets/image/BI2.jpg","assets/image/BI3.jpg","assets/image/BI1.jpg"];
  var item = ["data","data","data","data","data","data","data","data",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: false,
            title: const Text("FARMERS FRESH ZONE",style: TextStyle(fontWeight: FontWeight.bold),),
            actions: const [
              Icon(Icons.location_on_outlined,size: 16,),
              Padding(
                padding: EdgeInsets.only(top: 15.0,left: 0,right: 0),
                child: Text('Kochi',style: TextStyle(fontSize: 19),),
              ),
              Icon(Icons.arrow_drop_down,size: 16,),
            ],
            bottom: AppBar( 
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.green,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Something",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      fillColor: Colors.white,
                      filled: true
                    ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(8, (index) => 
                      Row(
                        children: [
                          Chip(
                            backgroundColor: Colors.red,
                            label: Text(List1[index]))
                        ],
                      )
                    ),
                  ),
                ),
                CarouselSlider.builder(
                  itemCount: Image1.length, 
                  itemBuilder: (context, ImageIndex, realIndex){
                    return Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            Image1[ImageIndex]),
                            fit: BoxFit.cover)
                      ),
                    );
                  }, 
                  options: CarouselOptions(
                    height: 300,
                    autoPlay: true,
                    enlargeCenterPage: true
                  )),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue)
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}