import 'package:flutter/material.dart';
import 'package:flutter_application_1/Assignments/Company%20UI/AccountPage.dart';
import 'package:flutter_application_1/Assignments/Company%20UI/RewardListPage.dart';

class RewardWallet extends StatefulWidget {
  const RewardWallet({super.key});

  @override
  State<RewardWallet> createState() => _RewardsState();
}

class _RewardsState extends State<RewardWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.blue,),
                      Text("Rewards Wallet",style: TextStyle(color: Colors.blue,fontSize: 16),)
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      height: 200,
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
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF3c3dac),Color(0xFF4661d7)])
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Total Balance",style: TextStyle(color: Colors.white),),
                            Text("14,325",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 120,
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("Refundable\nPrice",style: TextStyle(fontSize: 10),),
                                  Text("2500",style: TextStyle(fontSize: 14,color: Colors.blue),)
                                ],
                              ),
                              SizedBox(width: 60,),
                              Column(
                                children: [
                                  Text("Expired\nPrice",style: TextStyle(fontSize: 10),),
                                  Text("2000",style: TextStyle(fontSize: 14,color: Colors.blue),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 250,
                      top: 30,
                      child: SizedBox(
                        height: 130,
                        width: 130,
                        child: Image(image: AssetImage("assets/icons/ufo.png"))),
                    )
                  ],
                ),
                DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        color: Colors.white,
                        child: TabBar(
                          indicatorColor: Color(0xFF4661d7),
                          labelColor: Color(0xFF4661d7),
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.archive),
                                Tab(text: ' Reward'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.list),
                                Tab(text: ' Transactions'),
                              ],
                            )
                          ]),
                      ),
                      Container(
                        height: double.maxFinite,
                        child: TabBarView(
                          children: [
                            RewardList(),
                            Center(child: Text("TRANSACTION"))
                          ]
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}