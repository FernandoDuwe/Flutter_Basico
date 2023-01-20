import 'package:flutter/material.dart';

class GifSearchPage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search, size: 64),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text("Insira abaixo a sua pesquisa"),
              ),
              TextField(
                controller: this.searchController,
                decoration: InputDecoration(labelText: "Pesquisar"),
              ),
              SizedBox(
                height: 50,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(minHeight: 50, minWidth: 300),
                child: ElevatedButton(
                  child: Text("Pesquisar"),
                  onPressed: () =>
                      Navigator.pop(context, this.searchController.text),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
