import 'package:flutter/material.dart';

class WChat extends StatelessWidget {
  const WChat({super.key});

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
    var time = ['22:34','10:04','4:56','Yesterday','yesterday'];


    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},
        child: Icon(Icons.chat,color: Colors.white,),
        backgroundColor: Color(0xFF00897b),
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
              title: Text('CHATS',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Expanded(
              child: ListView(
                children: List.generate(5, (index) => 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 10, 10, 10),
                    child: ListTile(
                      title: Text(name[index], style: TextStyle(fontSize: 20),),
                      subtitle: Row(
                        children: [
                          Icon(Icons.check),
                          Text('${message[index]}'),
                        ],
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(image[index])
                      ),
                      trailing: Text(time[index]),
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