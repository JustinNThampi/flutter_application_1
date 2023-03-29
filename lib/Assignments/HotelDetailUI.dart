import 'package:flutter/material.dart';

class HotelDetailUi extends StatefulWidget {
  const HotelDetailUi({super.key});

  @override
  State<HotelDetailUi> createState() => _HotelDetailUiState();
}
class _HotelDetailUiState extends State<HotelDetailUi> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset('assets/image/CrnPlz.jpg'),
                  height: 400,
                  width: 500,
                ),
                Positioned(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Crowne Plaza',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Kochi, Kerala',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  top: 290,
                  right: 250,
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.all(30),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30)
                      ),
                      color: Colors.grey
                    ), 
                    child: Text('8.4/8.5 reviews',style: TextStyle(color: Colors.white,fontSize: 14),),
                  ),
                  top: 320,
                  right: 230,
                ),
                Positioned(child: Container(child: Icon(Icons.favorite_outline,color: Colors.white,),),left: 340,top: 350,)
              ],
            ),
            Center(
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Color(0xFF9b27b2),),
                            Icon(Icons.star,color: Color(0xFF9b27b2),),
                            Icon(Icons.star,color: Color(0xFF9b27b2),),
                            Icon(Icons.star,color: Color(0xFF9b27b2),),
                            Icon(Icons.star,color: Colors.grey,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.grey,size: 15,),
                            Text('8 km to LuluMall',style: TextStyle(fontSize: 13,color: Colors.grey),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170,top: 10),
                    child: Column(
                      children: [
                        Text('\$200',style: TextStyle(fontSize: 20,color: Color(0xFF9b27b2),fontWeight: FontWeight.bold),),
                        Text('/per night',style: TextStyle(fontSize: 13,color: Colors.grey),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(onPressed: () {}, 
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9b27b2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                  ), 
                  child: Text('Book Now',style: TextStyle(color: Colors.white),)),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Ramada Plaza Palm Grove",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Celebrate business success at the Crowne Plaza Kochi with a touch of leisure and panoramic views of backwaters and exquisite cuisine combined with rejuvenation at our Aira Spa."
                      "Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport."
                      "The hotel offers 269 spacious business rooms and suites with excellent views of the backwaters and the city. Our variety of authentic culinary outlets, extensive spa and leisure facilities, and high-tech meeting spaces that can accommodate large gatherings, all within a tranquil waterfront setting, makes Crowne Plaza Kochi the preferred international brand for business, leisure and events."
                      "Our Aira Spa is one of the largest hotel spas in Kerala, with a dedicated area of 25,000 sq. ft. The facilities include a beautiful reception with lobby, outdoor relaxation area with a tropical garden and water bodies, private relaxation lounge, consultation room, seven therapy suites of which three are dedicated to Ayurvedic therapies and treatments, three to western and oriental therapies and one is a couple's suite with Jacuzzi."
                  ),
                ]
              ),
            )
          ]
        ),
      ),
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          selectedItemColor: Color(0xFF9b27b2),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "settings",
            ),
          ],
        ),
      ),
    );
  }
}