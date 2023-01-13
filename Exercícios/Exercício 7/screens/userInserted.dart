import 'package:flutter/material.dart';
import 'package:flutter_basico/models/userInsertModel.dart';

class UserInserted extends StatelessWidget {
  const UserInserted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserInsertModel vrArgs = ModalRoute.of(context)!.settings.arguments as UserInsertModel;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 64,
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text("Muito obrigado por se cadastrar em nosso sistema, ${vrArgs.nome}."),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: Text("Um e-mail de confirmação de cadastro foi enviado para o e-mail ${vrArgs.email}."),
            ),
          ],
        ),
      ),
    );
  }
}
