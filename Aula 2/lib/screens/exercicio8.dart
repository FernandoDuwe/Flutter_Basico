import "package:flutter/material.dart";
import "package:flutter_basico_2/screens/confirm_screen.dart";

import "../models/user_data_model.dart";

class Exercicio8 extends StatefulWidget {
  const Exercicio8({super.key});

  @override
  State<Exercicio8> createState() => _Exercicio8State();
}

class _Exercicio8State extends State<Exercicio8> {
  List<UserDataModel> users = [
    UserDataModel(id: 1, nome: "Fernando", email: "fernando_duwe@hotmail.com"),
    UserDataModel(id: 2, nome: "Teobaldo", email: "sem e-mail"),
    UserDataModel(id: 3, nome: "Zebedeus", email: "zebedeus@topnames.com")
  ];

  Future<void> _confirmDelete(int index) async {
    bool? response = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ConfirmScreen(
          message: "Deseja realmente excluir o usuário selecionado?"),
    )) as bool?;

    if (!mounted)
      return;

    if ((response ?? false))
      setState(() {
        users.removeAt(index);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 8"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index].nome),
            subtitle: Text(users[index].email),
            trailing: IconButton(
              onPressed: () => _confirmDelete(index),
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
