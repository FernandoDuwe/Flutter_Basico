import 'package:aula2/models/userModel.dart';
import 'package:flutter/material.dart';

class BoasVindasUsuario extends StatelessWidget {
  const BoasVindasUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserModel vrModel = ModalRoute.of(context)!.settings.arguments as UserModel;

    return Scaffold(
      appBar: AppBar(
        title: Text("Bem vindo!"),
      ),
      body: Center(
        child: Text(
            "Olá ${vrModel.nome}, enviamos um e-mail para ${vrModel.email}"),
      ),
    );
  }
}
