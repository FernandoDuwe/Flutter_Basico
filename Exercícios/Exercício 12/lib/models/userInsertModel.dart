class UserInsertModel {
  String nome = "";
  String email = "";
  String userName = "";

  UserInsertModel(this.nome, this.email, this.userName);

  Map<String, dynamic> toJSON() {
    return {
      "username": this.userName,
      "name": this.userName,
      "email": this.email
    };
  }
}
