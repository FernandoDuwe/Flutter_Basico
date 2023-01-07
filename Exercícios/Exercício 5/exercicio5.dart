import 'package:flutter/material.dart';

import '../widgets/segundaTela.dart';

class Exercicio5 extends StatelessWidget {
  const Exercicio5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Essa é a primeira tela"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SegundaTela()));
                },
                child: Text("Ir para a segunda tela"))
          ],
        ),
      ),
    );
  }
}
