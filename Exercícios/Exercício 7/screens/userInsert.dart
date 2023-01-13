import 'package:flutter/material.dart';
import 'package:flutter_basico/models/userInsertModel.dart';

class UserInsert extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController controllerNome = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: this._formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: Text(
                      "Bem vindo a tela de cadastro de usuário. Preencha as informações abaixo para iniciar o cadastro"),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: TextFormField(
                    validator: (value) {
                      if (value! == "")
                        return "O campo nome é obrigatório";
                    },
                    controller: this.controllerNome,
                    decoration: InputDecoration(labelText: "Nome"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50),
                  child: TextFormField(
                    validator: (value) {
                      if (value! == "")
                        return "O campo e-mail é obrigatório";
                    },
                    controller: this.controllerEmail,
                    decoration: InputDecoration(labelText: "E-mail"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 50, minWidth: 300),
                    child: ElevatedButton(
                        onPressed: () {
                          if (this._formKey.currentState!.validate()) {
                            Navigator.of(context).pushNamed("/registered",
                                arguments: UserInsertModel(
                                    this.controllerNome.text,
                                    this.controllerEmail.text));
                          }
                        },
                        child: Text("Cadastrar")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
