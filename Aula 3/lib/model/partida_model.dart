import 'package:flutter_basico_3/model/time_model.dart';

class PartidaModel {
  String campeonato = "";
  late TimeModel mandante;
  late TimeModel visitante;
  int placar_mandante = 0;
  int placar_visitante = 0;

  PartidaModel(
      {required this.campeonato,
      required this.mandante,
      required this.visitante,
      required this.placar_mandante,
      required this.placar_visitante});

  PartidaModel.fromJson(Map<String, dynamic> json) {
    campeonato = json["campeonato"]["nome"];
    mandante = TimeModel.fromJson(json["time_mandante"]);
    visitante = TimeModel.fromJson(json["time_visitante"]);

    placar_mandante = json["placar_mandante"];
    placar_visitante = json["placar_visitante"];
  }
}
