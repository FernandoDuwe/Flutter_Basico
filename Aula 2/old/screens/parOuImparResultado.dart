import 'package:aula2/models/parImpar.dart';
import 'package:flutter/material.dart';

class ParOuImparResultado extends StatelessWidget {
  const ParOuImparResultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ParImpar resposta = ModalRoute.of(context)!.settings.arguments as ParImpar;

    return Scaffold(
      appBar: AppBar(
        title: Text("Par ou Impar: Resultado"),
      ),
      body: Center(
        child: Text(resposta.par ? "O usuário escolheu par" : "O usuário escolheu impar"),
      ),
    );
  }
}
