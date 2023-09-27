import 'package:aula1/widgets/contador_cor.dart';
import 'package:flutter/material.dart';

class Exercicio1Sala extends StatefulWidget {
  const Exercicio1Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio1Sala> createState() => _Exercicio1SalaState();
}

class _Exercicio1SalaState extends State<Exercicio1Sala> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContadorCor(contador),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  setState(() {
                    this.contador++;
                  });
                }, child: Text("+")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    this.contador--;
                  });
                }, child: Text("-"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
