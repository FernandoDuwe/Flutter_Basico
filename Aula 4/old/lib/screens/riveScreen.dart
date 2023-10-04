import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveScreen extends StatelessWidget {
  const RiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animações com Rive"),
      ),
      body: RiveAnimation.asset("assets/4145-8562-stock-vikiiiiiing.riv"),
    );
  }
}
