import 'package:flutter/material.dart';

class Exercicio5salaSegundaTela extends StatelessWidget {
  const Exercicio5salaSegundaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 5 - Segunda Tela"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clique abaixo para voltar a tela anterior"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Voltar"))
          ],
        ),
      ),
    );
  }
}
