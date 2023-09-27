import 'package:flutter/material.dart';

class Exercicio4Sala extends StatefulWidget {
  const Exercicio4Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio4Sala> createState() => _Exercicio4SalaState();
}

class _Exercicio4SalaState extends State<Exercicio4Sala> {
  int contadorPositivo = 0;
  int contadorNegativo = 0;

  String sentido = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
      ),
      body: Column(
        children: [
          Text(
              "Positivo ${this.contadorPositivo} Negativo: ${this.contadorNegativo}"),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                ),
                Expanded(
                    child: GestureDetector(
                  onPanUpdate: (details) {
                    if (details.delta.dx > 0) this.sentido = "direita";

                    if (details.delta.dx < 0) this.sentido = "esquerda";
                  },
                  onPanEnd: (details) {
                    if (this.sentido == "direita")
                      setState(() {
                        this.contadorPositivo++;
                      });

                    if (this.sentido == "esquerda")
                      setState(() {
                        this.contadorNegativo++;
                      });
                  },
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                  ),
                )),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
