import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BeerPage extends StatelessWidget {
  const BeerPage({Key? key}) : super(key: key);

  Future<List> Internal_GetListBeer() async {
    Uri vrURL = Uri.https("api.sampleapis.com", "beers/ale");

    http.Response vrResponse = await http.get(vrURL);

    return json.decode(vrResponse.body);
  }

  Widget Internal_ListBeers(List prBeers) {
    return ListView.builder(
      itemCount: prBeers.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image(
            image: NetworkImage(prBeers[index]["image"]),
            height: 64,
            width: 64,
            loadingBuilder: (context, child, loadingProgress) => CircularProgressIndicator(),
            errorBuilder: (context, error, stackTrace) => Icon(Icons.image_not_supported_outlined),
          ),
          title: Text(prBeers[index]["name"]),
          subtitle: Text(prBeers[index]["price"]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercício 9")),
      body: FutureBuilder(
        future: this.Internal_GetListBeer(),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Text("${snapshot.error}");

          if ((snapshot.connectionState == ConnectionState.waiting) ||
              (snapshot.connectionState == ConnectionState.none))
            return CircularProgressIndicator();

          return this.Internal_ListBeers(snapshot.data!);
        },
      ),
    );
  }
}
