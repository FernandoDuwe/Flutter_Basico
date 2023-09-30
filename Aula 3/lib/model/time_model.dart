class TimeModel {
  String nome = "";
  String escudo = "";

  TimeModel({ required this.nome, required this.escudo });

  TimeModel.fromJson(Map<String, dynamic> json) {
    nome = json["nome_popular"];
    escudo = json["escudo"];
  }
}