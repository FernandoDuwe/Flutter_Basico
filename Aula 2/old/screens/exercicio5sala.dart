import 'package:aula2/screens/exercicio5sala_segundatela.dart';
import 'package:flutter/material.dart';

class Exercicio5Sala extends StatelessWidget {
  const Exercicio5Sala({Key? key}) : super(key: key);

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
            Text("Clique no botão abaixo para ir para segunda tela"),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exercicio5salaSegundaTela(),)), child: Text("Segunda tela"))
          ],
        ),
      ),
    );
  }
}
