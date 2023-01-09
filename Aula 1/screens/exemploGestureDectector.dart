import 'package:flutter/material.dart';

class ExemploGestureDetector extends StatelessWidget {
  const ExemploGestureDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => print("Apertou"),
          onDoubleTap: () => print("Apertou duas vezes"),
          onForcePressEnd: (details) => print("Pressionou com força - ${details.pressure}"),
          child: Container(
            color: Colors.lightGreen,
            height: 200,
            width: 200,
          )
        ),
      ),
    );
  }
}
