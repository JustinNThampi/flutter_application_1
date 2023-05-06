import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  int index = 0;
  var title = ["My Wallet","Terms & Policies","About","LogOut",];
  var icon = [Icons.wallet,Icons.list,Icons.info,Icons.logout];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFeedcd6),
                  Color(0xFFdfe1ee),
                  Color(0xFFe6f8fc),
                  Color(0xFFfadff0)
                ])
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 330,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                      Color(0xFFeedcd6),
                      Color(0xFFdfe1ee),
                      ]
                    ),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(40))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                              onPressed: (){}, 
                              child: Icon(Icons.arrow_back_ios,color: Colors.blue,size: 20,)
                            ),
                          ),
                          SizedBox(width: 140,),
                          Text("Account",style: TextStyle(color: Colors.black),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/DP3.jpg"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Dennis Collins",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail),
                          Text("DennisCollins@gmail.com")
                        ],
                      ),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mobile_friendly),
                          Text("+91 7736222257")
                        ],
                      ),
                      SizedBox(height: 15,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4661d7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        onPressed: (){}, 
                        child: Text("Edit Profile"))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: SizedBox(
                          height: 60,
                          child: Center(
                            child: ListTile(
                              leading: Icon(icon[index],color: Color(0xFF4661d7),),
                              title: Text(title[index]),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}