import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 4"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Exercício 10"),
            subtitle: Text("Buscador de Gifs"),
            onTap: () {
              Navigator.of(context).pushNamed("/exercicio10Sala");
            },
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/exercicio10Sala");
              },
              child: Icon(Icons.play_arrow_outlined),
            ),
          ),
          ListTile(
            title: Text("Exemplo de animação"),
            subtitle: Text("Exemplo utilizando o Rive"),
            onTap: () {
              Navigator.of(context).pushNamed("/riveScreen");
            },
          ),
        ],
      ),
    );
  }
}
