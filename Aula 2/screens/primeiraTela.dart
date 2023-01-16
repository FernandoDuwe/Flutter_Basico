import 'package:aula2/screens/segundaTela.dart';
import 'package:flutter/material.dart';

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Tela"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => SegundaTela(),
        )),
        child: Text("Ir para a segunda tela"),
      )),
    );
  }
}
