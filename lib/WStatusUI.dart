import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: WStatus(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class WStatus extends StatelessWidget {
  const WStatus({super.key});

  @override
  Widget build(BuildContext context) {

    var name = ["Jhone", "Charlie", "Sebin","Appu","Shilpa"];
    var message = ['hi','hello','Good morning','hi','morning'];
    var image = [
      'assets/image/DP1.webp',
      'assets/image/DP2.jpg',
      'assets/image/DP3.jpg',
      'assets/image/DP5.jpg',
      'assets/image/DP4F.jpg',
      ];
    var time = ['22:34','10:04','4:56','3:44','10:33'];
    var day = ['Today','Today','Yesterday','Today','Yesterday'];

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {},
            child: Icon(Icons.edit,color: Colors.white,),
            backgroundColor: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: FloatingActionButton(onPressed: () {},
              child: Icon(Icons.camera_alt,color: Colors.white,),
              backgroundColor: Color(0xFF00897b),
            ),
          )
        ]
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF00897b),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('WhatsApp Clone',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 26,)),
          Icon(Icons.more_vert)
        ],
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              tileColor: Color(0xFF00897b),
              title: Text('STATUS',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),
              child: ListTile(
                title: Text('My status',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF00897b),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(5, (index) => 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),
                    child: ListTile(
                      title: Text(name[index], style: TextStyle(fontSize: 20),),
                      subtitle: Text("${day[index]},${time[index]}"),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(image[index])
                      ),
                    ),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}