import "package:flutter/material.dart";

class Exercicio3 extends StatefulWidget {
  const Exercicio3({super.key});

  @override
  State<Exercicio3> createState() => _Exercicio3State();
}

class _Exercicio3State extends State<Exercicio3> {
  bool lampState = false;
  List<Color> colors = [
    Colors.yellowAccent,
    Colors.blue,
    Colors.greenAccent,
    Colors.red,
    Colors.deepOrange
  ];
  int currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 3"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              lampState = !lampState;
            });
          },
          onDoubleTap: () {
            setState(() {
              currentColor = currentColor + 1;

              if (currentColor >= colors.length)
                currentColor = 0;
            });
          },
          child: Icon(
            Icons.lightbulb_sharp,
            color: (lampState ? colors[currentColor] : null),
            size: 200,
          ),
        ),
      ),
    );
  }
}
