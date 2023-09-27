import "package:flutter/material.dart";
import "package:flutter_basico_aula1/widgets/count_text.dart";

class Exercicio1 extends StatefulWidget {
  const Exercicio1({super.key});

  @override
  State<Exercicio1> createState() => _Exercicio1State();
}

class _Exercicio1State extends State<Exercicio1> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 1"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CountText(
              count: _count,
              fontSize: 18,
              positiveColor: Colors.orange,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CountText(count: _count, fontSize: 80),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _count = _count + 1;
                      });
                    },
                    child: Icon(Icons.add)),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _count = _count - 1;
                      });
                    },
                    child: Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }
}
