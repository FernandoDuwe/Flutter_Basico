import 'package:flutter/material.dart';

// Definição de método criada para que possamos retornar o nome do usuário ao clicar no botão
typedef UserCallback = void Function(String nomedoUsuario);

class UserPanel extends StatelessWidget {
  final String? nomeUsuario;
  final UserCallback? onLogoff;

  const UserPanel({this.nomeUsuario, this.onLogoff, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.person_add
        ),
        SizedBox(width: 12,),
        Text(this.nomeUsuario!),
        SizedBox(width: 12,),
        ElevatedButton(onPressed: () => this.onLogoff!(this.nomeUsuario!), child: Text("Logoff"))
      ],
    );
  }
}
