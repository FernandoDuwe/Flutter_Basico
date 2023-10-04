import "dart:ffi";

import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acessibilidade"),
      ),
      body: Center(
        child: Semantics(
          label: "Imagem da notícia",
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                  "https://img.nsctotal.com.br/wp-content/uploads/2023/10/blumenau-preve-enchente-foto-patrick-rodrigues-arquivo-nsc-total-2022-1.jpg"),
              SizedBox(height: 30,),
              Text("Aplicação de testes"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        tooltip: "Adicionar novo usuário",
        child: Icon(Icons.add),
      ),
    );
  }
}
