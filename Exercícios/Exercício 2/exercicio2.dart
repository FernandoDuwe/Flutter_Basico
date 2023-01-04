import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  const Exercicio2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
                child: Text(
                    "Para iniciar o cadastro, clique no botão abaixo para abrir o formulário de cadastro.",
                style: TextStyle(
                  fontSize: 24
                ))),
            SizedBox(
              height: 30,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50,
                minWidth: 120
              ),
              child: ElevatedButton(
                  onPressed: () => print("Cliclou"), child: Text("Iniciar!")),
            )
          ],
        ),
      ),
    );
  }
}
