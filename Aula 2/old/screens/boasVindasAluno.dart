import 'package:flutter/material.dart';

import '../models/aluno.dart';

class BoasVindasAluno extends StatelessWidget {
  const BoasVindasAluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AlunoModel vrArgs = ModalRoute.of(context)!.settings.arguments as AlunoModel;

    return Scaffold(
      appBar: AppBar(
        title: Text("Seja bem vindo!"),
      ),
      body: Center(
          child: Column(
        children: [Text("Seja bem vindo, ${vrArgs.nome}")],
      )),
    );
  }
}
