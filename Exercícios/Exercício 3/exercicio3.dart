import 'package:flutter/material.dart';

class Exercicio3 extends StatefulWidget {
  const Exercicio3({Key? key}) : super(key: key);

  @override
  State<Exercicio3> createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  Color corAcesa = Colors.yellowAccent;
  bool isAceso = false;

  void internal_trocarCor() {
    if (this.corAcesa == Colors.yellowAccent) {
      setState(() {
        this.corAcesa = Colors.blueAccent;
      });

      return;
    }

    if (this.corAcesa == Colors.blueAccent) {
      setState(() {
        this.corAcesa = Colors.greenAccent;
      });

      return;
    }

    if (this.corAcesa == Colors.greenAccent) {
      setState(() {
        this.corAcesa = Colors.yellowAccent;
      });

      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercício 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  this.isAceso = !this.isAceso;
                });
              },
              child: Icon(Icons.lightbulb_outline,
                  size: 128, color: (this.isAceso ? this.corAcesa : null)),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onDoubleTap: internal_trocarCor,
              child: Container(
                padding: EdgeInsets.all(12),
                child: Text("Dê um duplo tapa para trocar a cor da luz acesa"),
                color: this.corAcesa,
              ),
            )
          ],
        ),
      ),
    );
  }
}
