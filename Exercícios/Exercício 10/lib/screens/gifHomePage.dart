import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_basico/models/GifImageModel.dart';
import 'package:flutter_basico/widgets/GifTile.dart';

import 'package:http/http.dart' as http;

class GifHomePage extends StatefulWidget {
  const GifHomePage({Key? key}) : super(key: key);

  @override
  State<GifHomePage> createState() => _GifHomePageState();
}

class _GifHomePageState extends State<GifHomePage> {
  Future<Map> Internal_ListData() async {
    //Uri vrURL = Uri.https("api.giphy.com", "/v1/gifs/trending?api_key=QBOkmb2giDERT1wfR54XGpZ0oLd17Jkh&limit=25&rating=g");

    Uri vrURL = Uri.https("api.giphy.com", "/v1/gifs/trending", {
      "api_key": "QBOkmb2giDERT1wfR54XGpZ0oLd17Jkh",
      "limit": "25",
      "rating": "g"
    });

    http.Response vrResponse = await http.get(vrURL);

    return json.decode(vrResponse.body);
  }

  Widget Internal_ShowList(List prList) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 0),
      itemCount: prList.length,
      itemBuilder: (context, index) {
        return GifTile(GifImageModel.fromJSON(prList[index]));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gifs em Trending"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: this.Internal_ListData(),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8),
              color: Colors.redAccent,
              child: Text(snapshot.error.toString()),
            );

          if ((snapshot.connectionState == ConnectionState.none) ||
              (snapshot.connectionState == ConnectionState.waiting))
            return Center(
              child: CircularProgressIndicator(),
            );

          return this.Internal_ShowList(snapshot.data!["data"]);
        },
      ),
    );
  }
}
