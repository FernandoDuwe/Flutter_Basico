import "package:flutter/material.dart";
import "package:flutter_basico_2/extensions/user_string_extension.dart";
import "package:flutter_basico_2/models/user_data_model.dart";

class UserLoginForm extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  UserLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Seja bem vindo, para iniciar, informe seus dados abaixo e clique em cadastrar-se"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: nomeController,
                    decoration: InputDecoration(labelText: "Nome"),
                    validator: (value) {
                      if ((value ?? "").isEmpty) return "O nome é obrigatório";
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: "E-mail"),
                    validator: (value) {
                      if ((value ?? "").isEmpty) return "O e-mail é obrigatório";

                      if (!(value ?? "").isValidMail())
                        return "O e-mail informado não é válido";
                    },
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Endereço"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Telefone"),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pushNamed("/exercicio/welcome",
                            arguments: UserDataModel(
                                id: 0,
                                nome: nomeController.text,
                                email: emailController.text));
                      }
                    },
                    child: Text("Cadastrar-se"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
