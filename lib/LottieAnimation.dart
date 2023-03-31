import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(home: LottieeEx()));
}

class LottieeEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: [
          Lottie.network("https://assets6.lottiefiles.com/packages/lf20_ybfPAtf8S7.json"),
          Lottie.asset("assets/animation/Aniki Hamster.json",height: 100),
        ]),
      ),
    );
  }
}