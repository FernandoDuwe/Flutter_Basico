import "package:flutter/material.dart";
import "package:vaquinha/models/user_model.dart";
import "package:vaquinha/repositories/user_repository.dart";

class UserForm extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  VoidCallback onSave;

  UserForm({ required this.onSave, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Novo usuário"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Nome do usuário"),
            ),
          )
        ],
      ),
      actions: [
        TextButton(
            onPressed: () async {
              await UserRepository.add(UserModel(name: nameController.text));

              onSave();

              Navigator.of(context).pop();
            },
            child: Text("Salvar"))
      ],
    );
  }
}
