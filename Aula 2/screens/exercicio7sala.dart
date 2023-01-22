import 'package:aula2/models/userModel.dart';
import 'package:aula2/screens/boasVindasUsuario.dart';
import 'package:flutter/material.dart';

class Exercicio7Sala extends StatelessWidget {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 7"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Para efetuar o seu cadastro, preencha as informações abaixo"),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                controller: this.nomeController,
                decoration: InputDecoration(labelText: "Nome"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                controller: this.emailController,
                decoration: InputDecoration(labelText: "E-mail"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Divider(),
            ),
            ElevatedButton(
                onPressed: () {
                  /*
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => BoasVindasUsuario(),
                        settings: RouteSettings(
                            arguments: UserModel(this.nomeController.text,
                                this.emailController.text))),
                  );
                   */

                  UserModel usuario = UserModel(this.nomeController.text, this.emailController.text);
                  
                  Navigator.of(context).pushNamed("/boasVindasUsuario", arguments: usuario);
                },
                child: Text("Cadastrar"))
          ],
        ),
      ),
    );
  }
}
