import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: SliverExx(),
//   ));
// }

class farmerFreshZone extends StatefulWidget {

  @override
  State<farmerFreshZone> createState() => _farmerFreshZoneState();
}

class _farmerFreshZoneState extends State<farmerFreshZone> {

  var List1 = ["OFFERS","VEGITABLES","FRUITS","EXOTIC","FRESH CUTS","NUTRITION CHARGES","PAKED FLAVORS","GOURMENT SALADS"];

  var List2 = ["Offers","Vegitable","Fruits","Exotic","Fresh Cuts","Nutrition Charges","Paked Favors","Gourment Salads"];

  var Image1 = ["assets/image/banner2.jpg","assets/image/Banner3.webp","assets/image/FBanner4.jpg"];

  var Image2 = ["assets/icons/banana.png","assets/icons/mango.png","assets/icons/apple.png","assets/icons/orange.png"];

  var GridImage1 = ["assets/image/OfferBanner.jpg","assets/image/Vegitables.jpg","assets/image/Fruits.jpg","assets/image/Ecxotc.jpg","assets/image/FershCuts.jpg","assets/image/NutritionCgarges.jpg","assets/image/PakedFlover.jpg","assets/image/GurmentSalad.jpg"];

  var GridImage2 = ["assets/image/BloodPressure.jpg","assets/image/Brocoli.jpg","assets/image/Cough.jpg",];

  var GridTitle1 = ["Control Blood\nPressure...","Five reasons why\nBroccoil shou...","Five things to\nPrevent coufgh...",];

  var name = ["Banana","Mango","Apple","Orange"];

  var rate = ["\$40","\$25","\$35","\$20",];

  var weight = ["1 kg","2.5 kg","4 kg","3 kg",];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(8, (index) => 
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Chip(
                                backgroundColor: Colors.green[200],
                                label: Text(List1[index])),
                            )
                          ],
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  CarouselSlider.builder(
                    itemCount: Image1.length, 
                    itemBuilder: (context, ImageIndex, realIndex){
                      return Container(
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              Image1[ImageIndex]),
                              fit: BoxFit.cover)
                        ),
                      );
                    }, 
                    options: CarouselOptions(
                      height: 150,
                      autoPlay: true,
                      enlargeCenterPage: false
                      
                    )
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              Icon(Icons.timer,color: Colors.green,size: 30,),
                              SizedBox(height: 8,),
                              Text("30 MNS POLICY",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              Icon(Icons.mobile_off,color: Colors.green,size: 30,),
                              SizedBox(height: 8,),
                              Text("TRAICABILITY",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              Icon(Icons.source_outlined,color: Colors.green,size: 30,),
                              SizedBox(height: 8,),
                              Text("LOCAL SOURCING",style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Shop By Category",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 400,
                    child: GridView.builder(
                      itemCount: List2.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        //crossAxisSpacing: 5,
                        mainAxisSpacing: 5
                    ), itemBuilder: (context, index){
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter, 
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    List2[index],
                                    style: TextStyle(
                                      fontSize: 14
                                    ),
                                  ),
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 90,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage(
                                    GridImage1[index]),
                                    fit: BoxFit.cover
                                  )
                              ),
                            ),
                          )
                        ],
                      );
                    }),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/banner1.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Best Selling Products",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 400,
                    child: GridView.builder(
                      itemCount: Image2.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2
                      ), itemBuilder: (context, index){
                        return Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 300,
                                width: 200,
                              ),
                            ),
                            Positioned(
                              top: 120,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(name[index]),
                                  SizedBox(height: 10),
                                  Text(rate[index]),
                                  SizedBox(height: 10),
                                  Text(weight[index])
                                ],
                              ),
                            ),
                            Positioned(
                              top: 150,
                              left: 120,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green
                                ),
                                onPressed: (){}, child: Text("ADD"))),
                            Positioned(
                              left: 50,
                              top: 10,
                              child: Container(
                                height: 100,
                                width: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage(Image2[index]),fit: BoxFit.cover)
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    ),
                  ),
                  Center(child: Text("View More",style: TextStyle(fontSize: 18,color: Colors.blue),)),
                  SizedBox(height: 30,),
                  Stack(
                    children: [
                      Container(
                        height: 150,
                        color: Colors.white,
                      ),
                      Positioned(
                        left: 200,
                        child: Container(
                          height: 150,
                          width: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/image/certified-stamp.jpg"),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 40,
                        child: Text("we are working towards\nsafe food - which are Nutri - \nLocked and hygienic as well")
                      ),
                      SizedBox(height: 10,),
                      Positioned(
                        top: 90,
                        left: 20,
                        child: Row(
                          children: [
                            Text("READ MORE",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            Icon(Icons.read_more,color: Colors.green,)
                          ],))
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Our Blog Post",style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 170,
                        child: ListView.builder(
                          itemCount: GridImage2.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (conntext, index){
                          return Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(GridImage2[index]),fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(GridTitle1[index],style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Text("5 months ago"),
                                    SizedBox(width: 50,),
                                    Icon(Icons.arrow_forward,size: 14,)
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 8,),
                      Align(alignment: Alignment.center,child: Text("View More",style: TextStyle(fontSize: 18,color: Colors.blue),),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("What Our Customers Say?",style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height: 200,
                    child: Stack(
                      children: [
                        Container(
                          height: 150,
                        ),
                        Positioned(
                          top: 10,
                          left: 10,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/image/DP2.jpg"),
                          ),
                        ),
                        Positioned(
                          left: 70,
                          top: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Prince P I",style: TextStyle(color: Colors.green),),
                              SizedBox(height: 8,),
                              Text("Online digital marketing business"),
                            ],
                          )
                        ),
                        Positioned(
                          top: 60,
                          left: 10,
                          bottom: 10,
                          child: Container(
                            height: 100,
                            width: 370,
                            child: Text(" A single core uniprocessor system has 16 general purpose registers. The machine has" 
                                          "1MB RAM. The size of every general purpose register and memory word is 32 bits." 
                                          "The computer uses fixed length instructions of size 32 bits each. An instruction of the" 
                                          "machine can have two operands. One of these operands is a direct memory operand" 
                                          "and other is a register operand. Both these operands use direct addressing. An" 
                                          "instruction of a machine consists of bits for operation code, bits for memory operand" 
                                          "and bits of register operand"
                                    )
                                  )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("This Kochi-based-farm-to-fork online\nmarketplace is connecting farmers directly\nto customers",
                          style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                              Image(image: AssetImage("assets/icons/TimesOFIndia.png"),height: 80,width: 80,),
                              Image(image: AssetImage("assets/icons/yourStory.png"),height: 40,width: 40,),
                              Image(image: AssetImage("assets/icons/TNIE_Masthead_2016.svg.png"),height: 60,width: 60,),
                              Image(image: AssetImage("assets/icons/TimesNow.png"),height: 50,width: 50,),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Get To Know Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                              const SizedBox(height: 10,),
                              Row(
                                children: const [
                                  Text("About US  |",style: TextStyle(color: Colors.grey,fontSize: 13),),
                                  Text("  Out Farmers  |",style: TextStyle(color: Colors.grey,fontSize: 13),),
                                  Text("  Blog",style: TextStyle(color: Colors.grey,fontSize: 13),)
                                ],
                              ),
                              const SizedBox(height: 20,),
                              const Text("Useful links",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                              const SizedBox(height: 10,),
                              Row(
                                children: const [
                                  Text("Prvacy Policy  |",style: TextStyle(color: Colors.grey,fontSize: 13),),
                                  Text("  Return & Refund Policy  |",style: TextStyle(color: Colors.grey,fontSize: 13),),
                                  Text("  Terms & Conditions",style: TextStyle(color: Colors.grey,fontSize: 13),)
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.facebook,color: Colors.grey,),
                            Icon(Icons.camera,color: Colors.grey,),
                            Icon(Icons.message,color: Colors.grey,),
                            Icon(Icons.tv,color: Colors.grey,)
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: 400,
                    color: Colors.green,
                    child: const Text("\nCopyright @ 2021 Farmers Fresh Zone.\nAll Right Reserved. V 2.40.22",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  )
                ],
              ),
            ),
          ],
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
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: "HOME",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "CART",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "ACCOUNTS",
            ),
          ],
        ),
      ),
    );
  }
}