import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: ProfilUI(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

var Title = [
  "Privacy",
  "Purchase History",
  "Help & Support",
  "Settings",
  "Invite a Friend",
  "Logout"
];
var LIcons = [
  Icon(Icons.privacy_tip_outlined),
  Icon(Icons.history),
  Icon(Icons.help_outline),
  Icon(Icons.settings),
  Icon(Icons.person_add_alt),
  Icon(Icons.logout)
];

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)),
        backgroundColor: Colors.transparent,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.dehaze, color: Colors.black,))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .45,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/image/DP2.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Wrap(
                    spacing: 25,
                    children: [
                      Icon(Icons.facebook, size: 45,color: Colors.blue,),
                      SizedBox(height: 40,width: 40,child: Image.asset('assets/icons/twitter.png')),
                      SizedBox(height: 40,width: 40,child: Image.asset('assets/icons/linkein.png')),
                      SizedBox(height: 40,width: 40,child: Image.asset('assets/icons/Github.png'))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text("Jerrin",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
                ),
                const Text("@Webrror",
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text("Mobile App Developer",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            width: MediaQuery.of(context).size.width * .8,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30)),
                  child: ListTile(
                      title: Text(Title[index],
                          style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.black)),
                      leading: LIcons[index],iconColor: Colors.black,
                      trailing: const Icon(Icons.arrow_forward_ios,color: Colors.black,)),
                );
              },
              itemCount: Title.length,
            ),
          )
        ],
      ),
    );
  }
}