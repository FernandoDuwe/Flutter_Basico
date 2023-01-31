import 'dart:convert';

import 'package:aula4/models/gifModel.dart';
import 'package:aula4/screens/pesquisaGif.dart';
import 'package:aula4/widget/gifTile.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Exercicio10Sala extends StatefulWidget {
  const Exercicio10Sala({Key? key}) : super(key: key);

  @override
  State<Exercicio10Sala> createState() => _Exercicio10SalaState();
}

class _Exercicio10SalaState extends State<Exercicio10Sala> {
  String search = "";

  Future<Map> Internal_GetGifs() async {
    late Uri vrURl;

    if (this.search == "") {
      vrURl = Uri.https("api.giphy.com", "/v1/gifs/trending", {
        "api_key": "6xoe2Eol8wDl2STMxFLDxrTNEGe2uGKG",
        "limit": "25",
        "rating": "g"
      });
    } else {
      vrURl = Uri.https("api.giphy.com", "/v1/gifs/search", {
        "api_key": "6xoe2Eol8wDl2STMxFLDxrTNEGe2uGKG",
        "limit": "25",
        "rating": "g",
        "offset": "0",
        "q": this.search
      });
    }

    http.Response vrResponse = await http.get(vrURl);

    return json.decode(vrResponse.body);
  }

  Widget Internal_DrawGrid(BuildContext context, List prGifs) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 0),
        itemCount: prGifs.length,
        itemBuilder: (context, index) =>
            GifTile(GifModel.fromJSON(prGifs[index])));
  }

  Future<void> _CallSearch() async {
    var result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PesquisaGif(),
    ));

    if (!mounted) return;

    setState(() {
      this.search = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((this.search == ""
            ? "Gif em Trending"
            : "Pesquisando: ${this.search}")),
        actions: [
          IconButton(
              onPressed: () {
                if (this.search == "") {
                  this._CallSearch();
                } else {
                  setState(() {
                    this.search = "";
                  });
                }
              },
              icon:
                  (this.search == "" ? Icon(Icons.search) : Icon(Icons.clear)))
        ],
      ),
      body: FutureBuilder(
        future: this.Internal_GetGifs(),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Container(
              color: Colors.red,
              child: Text(snapshot.error.toString()),
            );

          if ((snapshot.connectionState == ConnectionState.none) ||
              (snapshot.connectionState == ConnectionState.waiting))
            return CircularProgressIndicator();

          return this.Internal_DrawGrid(context, snapshot.data!["data"]!);
        },
      ),
    );
  }
}
