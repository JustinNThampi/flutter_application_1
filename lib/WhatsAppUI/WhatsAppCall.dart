import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WhatsAppCall extends StatelessWidget {
  const WhatsAppCall({super.key});

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
    var time = ['22:34 am','10:04 pm','4:56 am','3:44 am','10:33 pm'];
    var day = ['Today','Today','Yesterday','Today','Yesterday'];

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},
        child: Icon(Icons.add_call,color: Colors.white,),
        backgroundColor: Color(0xFF00897b),
      ),
      body: Container(
        child: Column(
          children: [
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
                      trailing: Icon(Icons.phone,color: Colors.green,),
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