import 'package:flutter/material.dart';

class RewardList extends StatefulWidget {
  const RewardList({super.key});

  @override
  State<RewardList> createState() => _RewardListState();
}

class _RewardListState extends State<RewardList> {

  var date = ["20","18","06","11","08","31","57","02","30","40","53","17","19","05"];
  var id = [
    "2346722386",
    "3875273423",
    "3523554545",
    "5325454345",
    "5435232345",
    "2452352235",
    "3453452334",
    "5417862443",
    "8495823523",
    "7563653728",
    "7823562364",
    "8723652736",
    "3742648736",
    "3553878237",
    ];
  var LaDate = [
    "Dec 31,2021",
    "Jan 31,2021",
    "Jun 31,2021",
    "Feb 31,2021",
    "Dec 31,2021",
    "Sep 31,2021",
    "Jul 31,2021",
    "Dec 31,2021",
    "Mar 31,2021",
    "Dec 31,2021",
    "Dec 31,2021",
    "Dec 31,2021",
    "Dec 31,2021",
    "Dec 31,2021",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 800,
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey)
                      ),
                      child: Center(child: Text("All",style: TextStyle(fontSize: 13,color: Colors.grey),)),
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey)
                      ),
                      child: Center(child: Text("Direct RewardList",style: TextStyle(fontSize: 13,color: Colors.grey),)),
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey)
                      ),
                      child: Center(child: Text("Indirect RewardList",style: TextStyle(fontSize: 13,color: Colors.blue),)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 700,
                child: ListView.builder(
                  itemCount: date.length,
                  itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      leading: Text(date[index],style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),),
                      title: Text("Order Id - "+id[index],style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      trailing: Text("Valid Til\n"+LaDate[index],textAlign: TextAlign.center,style: TextStyle(fontSize: 10,color: Colors.grey),),
                    ),
                  );
                }),
              )
            ],
          ),
        )),
    );
  }
}