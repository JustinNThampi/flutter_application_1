import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/Company%20UI/AccountPage.dart';
import 'package:flutter_application_1/Assignments/Company%20UI/RewardWalletPage.dart';

// void main() {
//   runApp(MaterialApp(
//     home: BottomBar1(),
//   ));
// }

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List screens = const [
    Text("Home"),
    Text("Apps"),
    RewardWallet(),
    Account(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)),
        child: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.shifting,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          selectedItemColor: Color(0xFF4661d7),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.archive), 
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), 
              label: ''
            ),
          ],
        ),
      ),
      body: Center(
        child: screens[index],
      ),
    );
  }
}