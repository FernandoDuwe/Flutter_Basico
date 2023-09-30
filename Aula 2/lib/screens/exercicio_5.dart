import "package:flutter/material.dart";
import "package:flutter_basico_2/screens/ex5_segunda_tela.dart";

class Exercicio5 extends StatelessWidget {
  const Exercicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 5"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Essa é a primeira tela"),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/exercicio5/segundaTela");
                  },
                  child: Text("Ir para segunda tela")),
            )
          ],
        ),
      ),
    );
  }
}
