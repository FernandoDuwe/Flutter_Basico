import 'package:aula2/screens/primeiraTela.dart';
import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  const SegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: Center(
        child: Text("Teste")
      ),
    );
  }
}
