import 'package:flutter/material.dart';
import 'package:flutter_basico/widgets/counterText.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({Key? key}) : super(key: key);

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Excercício 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterText(this.counter),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  setState(() {
                    this.counter++;
                  });
                }, icon: Icon(Icons.add)),
                IconButton(onPressed: () {
                  setState(() {
                    this.counter--;
                  });
                }, icon: Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
