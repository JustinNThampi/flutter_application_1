import 'package:flutter/material.dart';

class BankApp extends StatefulWidget {
  const BankApp({super.key});

  @override
  State<BankApp> createState() => _BankAppState();
}

class _BankAppState extends State<BankApp> {

  var GridText = ["My Account","Load eSewa","Payment","Fund Transfer","Shedule\nPayment","Scan to Pay"];
  var GridIcon = [Icons.account_box_outlined,Icons.e_mobiledata,Icons.payment_outlined,Icons.mobile_screen_share,Icons.payments_outlined,Icons.qr_code];
  var amount = ["NPR. 10,000.00","NPR. 8,000.00","NPR. 15,000.00","NPR. 11,000.00"];
  var date = ["10-6-2022","22-5-2022","5-5-2022","16-4-2022"];
  
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("Welcome! EDDI")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 1000,
              //color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 180,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("WOULD YOU LIKE TO ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  SizedBox(
                    height: 270,
                    child: GridView.builder(
                      itemCount: GridText.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5
                      ), 
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(GridIcon[index],size: 35,color: Colors.red,),
                                SizedBox(height: 8,),
                                Text(GridText[index],style: TextStyle(fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        );
                      }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("LAST TRANSACTIONS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                      itemCount: amount.length,
                      itemBuilder: (context, index){
                        return Stack(
                          children: [ 
                            Card(
                            elevation: 5,
                            child: SizedBox(
                              height: 100,
                              child: Center(
                                child: ListTile(
                                  title: Text("CWDR/\n936452761874827",style: TextStyle(fontWeight: FontWeight.bold),),
                                  trailing: Text(amount[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                  subtitle: Text(date[index]),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 100,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                              ),
                            ),
                          )
                          ]
                        );
                      }
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red
                ),
              ),
            ),
            Positioned(
              left: 18,
              top: 15,
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),color: Colors.white
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/image/DP3.jpg"),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("EDDI SAMUEL JHONE",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Row(children: [
                          Text("NRP. ",style: TextStyle(fontSize: 20,color: Colors.red),),
                          Text("1,23,456.78",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 19),),
                          SizedBox(width: 10,),
                          Icon(Icons.visibility,color: Colors.blue,size: 20,)
                        ],),
                        SizedBox(height: 5,),
                        Text("12345678987654321",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}