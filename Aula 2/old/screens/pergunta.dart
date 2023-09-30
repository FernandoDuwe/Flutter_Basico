import 'package:aula2/screens/resposta.dart';
import 'package:flutter/material.dart';

class Pergunta extends StatelessWidget {
  const Pergunta({Key? key}) : super(key: key);

  Future<void> Internal_Responder(BuildContext context) async {
    final result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Resposta()));

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pergunta"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hoje é que dia?"),
            ElevatedButton(
                onPressed: () => this.Internal_Responder(context),
                child: Text("Responder"))
          ],
        ),
      ),
    );
  }
}
