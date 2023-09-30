import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class CoffeList extends StatelessWidget {
  const CoffeList({Key? key}) : super(key: key);

  Future<List> Internal_GetCoffeList() async {
    Uri vrURL = Uri.https("api.sampleapis.com", "/coffee/hot");

    http.Response vrResposta = await http.get(vrURL);

    return json.decode(vrResposta.body);
  }

  Widget Internal_ListData(BuildContext context, List prData) {
    return ListView.builder(
      itemCount: prData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image(
            image: NetworkImage(prData[index]["image"]),
            width: 64,
            errorBuilder: (context, error, stackTrace) =>
                Icon(Icons.not_interested),
          ),
          title: Text(prData[index]["title"]),
          subtitle: Text(prData[index]["description"]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de cafés"),
        ),
        body: FutureBuilder(
          future: this.Internal_GetCoffeList(),
          builder: (context, snapshot) {
            // Caso tenha ocorrido um erro
            if (snapshot.hasError) {
              return Container(
                child: Text(snapshot.error.toString()),
                color: Colors.red,
              );
            }

            // Enquanto a requisição não foi efetuada, ou ainda estiver processando, exibe um aguarde
            if ((snapshot.connectionState == ConnectionState.none) ||
                (snapshot.connectionState == ConnectionState.waiting))
              return Center(
                child: CircularProgressIndicator(),
              );

            // Se cair aqui, a requisição já retornou com os dados
            return Internal_ListData(context, snapshot.data!);
          },
        ));
  }
}
