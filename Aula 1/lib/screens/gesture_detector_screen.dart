import "package:flutter/material.dart";

class GestureDetectorScreen extends StatelessWidget {
  const GestureDetectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Detector"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => print("Usuario clicou/pressionou"),
          onDoubleTap: () => print("Duplo clique"),
          onLongPress: () => print("Clicou e segurou"),
          onPanUpdate: (details) {
            print("x: ${details.delta.dx} y: ${details.delta.dy}");
          },
          onForcePressEnd: (details) {
            print(details.pressure);
          },
          child: Container(
            height: 300,
            width: 300,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
