import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aula 3 - Página Inicial"),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("Lista de Cafés"),
              subtitle: Text("Exemplo de requisição HTTP (GET)"),
              onTap: () => Navigator.of(context).pushNamed("/coffeList"),
            ),
            ListTile(
              title: Text("Exercício 9"),
              subtitle: Text("Listagem de cervejas"),
              onTap: () => Navigator.of(context).pushNamed("/exercicio9"),
            )
          ],
        ));
  }
}
