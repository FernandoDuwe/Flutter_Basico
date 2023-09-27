import 'package:flutter/material.dart';

class Exercicio2Sala extends StatelessWidget {
  const Exercicio2Sala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: 200,
              ),
                child: Text(
                    "Teste qsc asofsaio nioasfo ioasfhs jsfioj asn iafnaso ngn asioooaisnfasn assfsa ")),
            SizedBox(
              height: 50,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minHeight: 30, minWidth: 200),
                child: ElevatedButton(onPressed: null, child: Text("Enviar")))
          ],
        ),
      ),
    );
  }
}
