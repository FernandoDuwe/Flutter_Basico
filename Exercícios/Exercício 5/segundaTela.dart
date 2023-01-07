import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  const SegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda tela"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Essa é a segunda tela"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text("Voltar para a primeira tela"))
          ],
        ),
      ),
    );
  }
}
