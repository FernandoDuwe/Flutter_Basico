class UserModel {
  String? id;
  String name = "";

  UserModel({ required this.name });

  // Deserialização
  UserModel.fromJson(Map<String, dynamic> json, String id) {
    id = id;
    name = json["name"];
  }

  // Serialização
  Map<String, dynamic> toJson() {
    return {
      "name": name
    };
  }
}