import 'package:aula2/models/parImpar.dart';
import 'package:aula2/screens/parOuImparResultado.dart';
import 'package:flutter/material.dart';

class ParOuImpar extends StatelessWidget {
  const ParOuImpar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Par ou Impar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Escolha par ou impar..."),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/resultadoParImpar",
                      arguments: ParImpar(true));
                },
                child: Text("Par")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/resultadoParImpar",
                      arguments: ParImpar(false));
                },
                child: Text("Impar"))
          ],
        ),
      ),
    );
  }
}
