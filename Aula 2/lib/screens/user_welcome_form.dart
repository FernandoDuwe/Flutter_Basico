import "package:flutter/material.dart";
import "package:flutter_basico_2/extensions/user_string_extension.dart";
import "package:flutter_basico_2/models/user_data_model.dart";

class UserWelcomeForm extends StatelessWidget {
  const UserWelcomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    UserDataModel userDataModel =
        (ModalRoute.of(context)!.settings.arguments!) as UserDataModel;

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 64,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
                "${userDataModel.nome.getFirstName()}, Muito obrigado por se cadastrar em nossa aplicação :)"),
          ),
          Text("Um e-mail foi enviado para ${userDataModel.email}")
        ],
      ),
    ));
  }
}
