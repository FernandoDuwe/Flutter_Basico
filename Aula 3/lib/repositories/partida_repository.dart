import "dart:convert";

import "package:flutter_basico_3/model/partida_model.dart";
import "package:http/http.dart" as http;

class PartidaRepository {
  static Future<List<PartidaModel>> getPartidas() async {
    Uri uri = Uri.https("api.api-futebol.com.br", "/v1/ao-vivo");

    http.Response response = await http.get(uri, headers: {
      "Authorization": "Bearer test_bc30639f3b8fdc5dfbeae1146ab754"
    });

    var result = jsonDecode(response.body);

    List<PartidaModel> partidas = [];

    (result as List)
        .forEach((element) => partidas.add(PartidaModel.fromJson(element)));

    return partidas;
  }
}
