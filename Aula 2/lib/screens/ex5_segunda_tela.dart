import "package:flutter/material.dart";

class Ex5SegundaTela extends StatelessWidget {
  const Ex5SegundaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ex5 -> Segunda tela"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Essa é a segunda tela"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Voltar para a página anterior"),
            )
          ],
        ),
      ),
    );
  }
}
