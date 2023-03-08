import 'package:device_preview/device_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home : Splashh(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class Splashh extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(              //Gradient colors for whole body
          gradient: LinearGradient(
            colors: [
              Colors.green, 
              Colors.blue, 
              Colors.white],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter
          )
        ),
        //color: Colors.lightGreen,               //Single color for whole body
        // decoration: BoxDecoration(             //network or aseset image for whole body
        //   image: DecorationImage(
        //     fit: BoxFit.fill,
        //     image: NetworkImage(
        //       "https://www.pexels.com/photo/different-shades-of-green-color-2078266/"
        //     )
        //     image: AssetImage(
        //        "assets/image/BI2.jpg"
        //     )
        //   )
        // ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.scatter_plot,
              //   size: 30,
              //   color: Colors.purple,
              // ),
              Image.asset(
                "assets/icons/TommyLizz.png",
                height: 100,
                width: 100,
                ),
              Text(
                "My Application Page",
                style: 
                  // GoogleFonts.vampiroOne(             //font using dependency (no need for the constant text)
                  //   fontSize: 40,
                  //   color: Colors.black,
                  //   fontWeight: FontWeight.bold,
                  //   textStyle: Theme.of(context).textTheme.labelMedium
                  // )
                TextStyle(                               //font using font folder
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald'
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}