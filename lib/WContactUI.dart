import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

// void main(){
//   runApp(DevicePreview(
//     builder: (BuildContext context) => MaterialApp(
//       useInheritedMediaQuery: true,
//       home: WContact(),
//       debugShowCheckedModeBanner: false,
//     ),
//   ));
// }

class WContact extends StatelessWidget {
  const WContact({super.key});

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


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00897b),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.arrow_back,size: 25,),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select Contact',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('5 contacts',style: TextStyle(fontSize: 13),)
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search,size: 26,)),
          Icon(Icons.more_vert)
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),
              child: ListTile(
                title: Text('New Group',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF00897b),
                  child: Icon(Icons.people,color: Colors.white,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),
              child: ListTile(
                title: Text('New Contact',style: TextStyle(fontWeight: FontWeight.bold),),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFF00897b),
                  child: Icon(Icons.person_add,color: Colors.white,),
                ),
                trailing: Icon(Icons.qr_code),
              ),
            ),
            Expanded(
              child: ListView(
                children: List.generate(5, (index) => 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),
                    child: ListTile(
                      title: Text(name[index], style: TextStyle(fontSize: 20),),
                      subtitle: Text('${message[index]}'),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(image[index])
                                  ),
                    ),
                  )
                ),
              ),
            ),
          ]
        )
      ),
    );
  }
}