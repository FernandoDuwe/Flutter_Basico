import "package:flutter/material.dart";
import "package:flutter_basico_3/model/time_model.dart";
import "package:flutter_basico_3/repositories/partida_repository.dart";
import "package:flutter_basico_3/widgets/partida_tile.dart";

import "../model/partida_model.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Partidas ao vivo"),
        ),
        body: FutureBuilder(
          future: PartidaRepository.getPartidas(),
          builder: (context, snapshot) {
            if (snapshot.hasError)
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  style: TextStyle(color: Colors.red),
                ),
              );

            if (!snapshot.hasData)
              return Center(
                child: CircularProgressIndicator(),
              );

            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) =>
                    PartidaTile(partidaModel: snapshot.data![index]));
          },
        ));
  }
}
