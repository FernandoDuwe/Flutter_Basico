import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecione uma resposta"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Domingo"),
            onTap: () => Navigator.of(context).pop("domingo"),
          ),
          ListTile(
            title: Text("Segunda"),
            onTap: () => Navigator.of(context).pop("segunda"),
          ),
          ListTile(
            title: Text("Terça"),
            onTap: () => Navigator.of(context).pop("terça"),
          )
        ],
      ),
    );
  }
}
