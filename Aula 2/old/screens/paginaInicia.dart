import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: ListView(
          children: [
            ListTile(
              title: Text("Exercício 5"),
              onTap: () => Navigator.of(context).pushNamed("/exercicio5"),
            ),
            ListTile(
              title: Text("Exercício 6"),
              onTap: () => Navigator.of(context).pushNamed("/exercicio6"),
            ),
            ListTile(
              title: Text("Exercício 7"),
              onTap: () => Navigator.of(context).pushNamed("/exercicio7"),
            ),
            ListTile(
              title: Text("Exercício 8"),
              onTap: () => Navigator.of(context).pushNamed("/exercicio8"),
            ),
            ListTile(
              title: Text("Cadastro de Alunos"),
              subtitle: Text("Exemplo de envio de dados para uma nova rota"),
              onTap: () => Navigator.of(context).pushNamed("/cadastroAlunos"),
            ),
            ListTile(
              title: Text("Par Ou Impar"),
              subtitle: Text("Exemplo de envio de dados para uma nova rota"),
              onTap: () => Navigator.of(context).pushNamed("/parOuImpar"),
            )
          ],
      ),
    );
  }
}
