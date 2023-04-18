import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/Grid_with_Card/Values.dart';

class HotelHomePage extends StatelessWidget {
  const HotelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue[200],
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.menu,color: Colors.white,size: 30,),
                      ),
                      SizedBox(width: 285,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.favorite_outline,color: Colors.white,size: 30,),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Type your Location",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(Icons.search,color: Colors.grey,)
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFe91e63)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.hotel,color: Colors.white,size: 30,),
                        SizedBox(height: 10,),
                        Text("Hotel",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF2196f3)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.restaurant,color: Colors.white,size: 30,),
                        SizedBox(height: 10,),
                        Text("Restaurant",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFff9800)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.coffee,color: Colors.white,size: 30,),
                        SizedBox(height: 10,),
                        Text("Cafe",style: TextStyle(color: Colors.white,fontSize: 20),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Container(
                  height: 250,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    image: DecorationImage(image: AssetImage("assets/image/london.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  top: 280,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Awesome room near Bouddha',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text("Bouddha, Kathmandu"),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Icon(Icons.star,color: Colors.green,),
                            Text("(220 reviews)")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(child: Icon(Icons.star_border_outlined,color: Colors.black,), top: 20, left: 330,),
                Positioned(child: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white),
                  child: Align(alignment: Alignment.center, child: Text("\$40",style: TextStyle(fontSize: 20),)),
                  ),
                  top: 200,
                  left: 300,)
              ],
            )
          ],
        ),
      ),
    );
  }
}