import 'package:flutter/material.dart';

class Exercicio3Sala extends StatefulWidget {
  const Exercicio3Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio3Sala> createState() => _Exercicio3SalaState();
}

class _Exercicio3SalaState extends State<Exercicio3Sala> {
  bool estaAceso = false;
  Color corAcesa = Colors.yellowAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            this.estaAceso = !this.estaAceso;
          }),
          onDoubleTap: () {
            setState(() {
              if (this.corAcesa == Colors.yellowAccent) {
                this.corAcesa = Colors.blue;
                return;
              }

              if (this.corAcesa == Colors.blue) {
                this.corAcesa = Colors.greenAccent;
                return;
              }

              if (this.corAcesa == Colors.greenAccent) {
                this.corAcesa = Colors.yellowAccent;
                return;
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.light_outlined,
                  size: 64,
                  color: (this.estaAceso ? this.corAcesa : Colors.grey)),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text("Dê um duplo clique para alterar a cor"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
