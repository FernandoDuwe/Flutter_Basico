import 'package:flutter/material.dart';

import '../models/aluno.dart';

class CadastroAluno extends StatelessWidget {
  TextEditingController controllerNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Aluno"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: this.controllerNome,
                decoration: InputDecoration(labelText: "Nome"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("/boasVindasAluno", arguments: AlunoModel(this.controllerNome.text));
                },
                child: Text("Enviar"))
          ],
        ),
      ),
    );
  }
}
