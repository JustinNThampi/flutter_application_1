import 'package:flutter/material.dart';

class InvoiceDate extends StatefulWidget {
  const InvoiceDate({super.key});

  @override
  State<InvoiceDate> createState() => _InvoiceDateState();
}

class _InvoiceDateState extends State<InvoiceDate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white
                  ),
                  child: Icon(Icons.arrow_back_ios,color: Color(0xFF4661d7),)
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Select Invoice Date",style: TextStyle(color: Color(0xFF4661d7)),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Eg : December 12,2022',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    fillColor: Color.fromARGB(211, 255, 253, 253),
                    filled: true,
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.calendar_month),
                        Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Enter The Amount",style: TextStyle(color: Color(0xFF4661d7)),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Eg : 2500',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    fillColor: Color.fromARGB(211, 255, 253, 253),
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 90),
              Center(
                child: Container(
                  height: 250,
                  width: 250,
                  child: Image.asset("assets/icons/MobileHand.png")),
              ),
              SizedBox(height: 95,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 173,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
                        ),
                        onPressed: (){}, 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_ios,color: Color(0xFF4661d7),size: 14),
                            Text("Back",style: TextStyle(color: Color(0xFF4661d7)),),
                          ],
                        )),
                    ),
                    SizedBox(
                      height: 40,
                      width: 173,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF4661d7),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), 
                        ),
                        onPressed: (){}, 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Submit",style: TextStyle(color: Colors.white),),
                            Icon(Icons.check_circle_outline,color: Colors.white,size: 14,),                            
                          ],
                        )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}