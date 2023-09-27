import 'package:flutter/material.dart';
import 'package:aula1/widgets/userPanel.dart';

class ExemploTelaUserPanel extends StatelessWidget {
  const ExemploTelaUserPanel({Key? key}) : super(key: key);

  void apertouLogoff(String nomeUsuario) {
    print("Apertou em Logoff: $nomeUsuario");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: UserPanel(nomeUsuario: "Proway", onLogoff: this.apertouLogoff,)),
          body: Column(
            children: [
              UserPanel(nomeUsuario: "Fernando", onLogoff: this.apertouLogoff),
              UserPanel(nomeUsuario: "Anderson", onLogoff: this.apertouLogoff),
              UserPanel(nomeUsuario: "Matheus", onLogoff: this.apertouLogoff)
            ],
          ),
        )
    );
  }
}
