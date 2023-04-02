import 'package:flutter/material.dart';

  var Images = [
  "assets/image/PCover1.jpg",
  "assets/image/PCover2.jpg",
  "assets/icons/PCover3.png",
  "assets/icons/PCover4.png",
  "assets/image/PCover5.webp",
  "assets/image/PCover6.jpg",
];


class GridView2 extends StatelessWidget {
  const GridView2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Playlist",style: TextStyle(color: Colors.pink[200],fontSize: 40,fontWeight: FontWeight.bold),),
          )),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey[850],
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.pink[200],fontSize: 18),
              suffixIcon: Icon(Icons.search,size: 24,color: Colors.pink[200],)
            ),
          ),
          SizedBox(            
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.width * .9,
            child: GridView.builder(
              itemCount: Images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ), 
              itemBuilder: (context, index) =>
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(Images[index],fit: BoxFit.cover,)),
                )
            ),
          )
        ],
      ),
    );
  }
}