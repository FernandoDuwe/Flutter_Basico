import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PesquisaGif extends StatelessWidget {
  TextEditingController editPesquisa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              size: 64,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
                "Preencha abaixo uma palavra ou expressão e clique em pesquisar"),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: TextField(
                controller: this.editPesquisa,
                decoration: InputDecoration(labelText: "Pesquisar"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(this.editPesquisa.text);
                },
                child: Text("Pesquisar!"))
          ],
        ),
      ),
    );
  }
}
