import 'package:flutter/material.dart';

class Exercicio4 extends StatefulWidget {
  const Exercicio4({Key? key}) : super(key: key);

  @override
  State<Exercicio4> createState() => _Exercicio4State();
}

class _Exercicio4State extends State<Exercicio4> {
  int contadorPositivo = 0;
  int contadorNegativo = 0;

  String sentidoSwipe = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 4"),
      ),
      body: Column(
        children: [
          Text("Positivo: ${this.contadorPositivo}   Negativo: ${this.contadorNegativo}"),
          Expanded(
              child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.white38,
              child: Icon(Icons.person, size: 120),
              maxRadius: 120,
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 32,
                  width: 32,
                  child: Icon(Icons.cancel_outlined, color: Colors.white38),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
                SizedBox(width: 50),
                GestureDetector(
                  onPanUpdate: (details) {
                    this.sentidoSwipe = (details.delta.dx > 0 ? "direita" : "esquerda");
                  },

                  onPanEnd: (details) {
                    if (this.sentidoSwipe == "direita") {
                      setState(() {
                        this.contadorPositivo++;
                      });
                    } else {
                      setState(() {
                        this.contadorNegativo++;
                      });
                    }

                    this.sentidoSwipe = "";
                  },

                  child: Container(
                    alignment: Alignment.center,
                    height: 64,
                    width: 64,
                    child: Icon(Icons.question_mark, color: Colors.white38),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 50),
                Container(
                  height: 32,
                  width: 32,
                  alignment: Alignment.center,
                  child: Icon(Icons.check, color: Colors.white38),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
