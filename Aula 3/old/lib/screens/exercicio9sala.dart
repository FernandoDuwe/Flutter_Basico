import 'dart:convert';

import 'package:aula3/models/beerModel.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Exercicio9 extends StatelessWidget {
  const Exercicio9({Key? key}) : super(key: key);

  Future<List> Internal_GetBeerList() async {
    Uri vrURL = Uri.https("api.sampleapis.com", "/beers/ale");

    http.Response vrResponse = await http.get(vrURL);

    return json.decode(vrResponse.body);
  }

  Widget Internal_DrawList(BuildContext context, List prCervejas) {
    return ListView.builder(
      itemCount: prCervejas.length,
      itemBuilder: (context, index) {
        BeerModel beer = BeerModel.fromJSON(prCervejas[index]);

        return ListTile(
          leading: Image(
            image: NetworkImage(beer.image),
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.no_drinks,
              color: Colors.yellow,
            ),
          ),
          title: Text(beer.name),
          subtitle: Text(beer.price),
          onTap: () =>
              Navigator.of(context).pushNamed("/beerDetail", arguments: beer),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 9"),
      ),
      body: FutureBuilder(
        future: this.Internal_GetBeerList(),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Center(
              child: Text(snapshot.error.toString(),
                  style: TextStyle(color: Colors.red)),
            );

          if ((snapshot.connectionState == ConnectionState.none) ||
              (snapshot.connectionState == ConnectionState.waiting))
            return Center(
              child: CircularProgressIndicator(),
            );

          return this.Internal_DrawList(context, snapshot.data!);
        },
      ),
    );
  }
}
