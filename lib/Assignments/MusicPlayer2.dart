import 'package:flutter/material.dart';

  var images = [
  "assets/image/PCover1.jpg",
  "assets/image/PCover2.jpg",
  "assets/icons/PCover3.png",
  "assets/icons/PCover4.png",
  "assets/image/PCover5.webp",
  ];
  var images2 = [
    "assets/image/PCover5.webp",
    "assets/image/PCover2.jpg",
    "assets/icons/PCover4.png",
    "assets/image/PCover1.jpg",
    "assets/image/PCover5.webp",
  ];
  var song = ["Hero","Unholy","Lift Me Up",'"Depression"',"I'am Good",];
  var singers = ["Taylor Swift","Sam Smith, Kim Petras","Rihana","Dax","David Guetta & Bebe Rexha"];

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Musify.",style: TextStyle(color: Colors.pink[200],fontSize: 40,fontWeight: FontWeight.bold),),
              )),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Suggested playlists",
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 15,);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(images[index],fit: BoxFit.cover,)),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Recommended for you",
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                  )
                )
              ),
              Expanded(
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: song.length,
                    itemBuilder: (context, index){ 
                      return Card(
                        color: Colors.transparent,
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(song[index],style: TextStyle(color: Colors.pink[200],fontWeight: FontWeight.bold),),
                          ),
                          subtitle: Text(singers[index],style: TextStyle(color: Colors.white),),
                          leading: Image(image: AssetImage(images2[index]),fit: BoxFit.cover,),
                          trailing: Wrap(children: [
                              Icon(Icons.star_border_outlined,color: Colors.pink[200],),
                              SizedBox(width: 10,),
                              Icon(Icons.download_outlined,color: Colors.pink[200],)
                            ]
                          ),
                        ),
                      );
                  }),
                ),
              )
            ]    
          ),
        ), 
        bottomNavigationBar: ClipRRect(
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex: index,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.pink[200],
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled,),
                label: "."
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "."
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add),
                label: "."
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: "."
              ),
            ],
          ),
        ), 
      ),
    );
  }
}