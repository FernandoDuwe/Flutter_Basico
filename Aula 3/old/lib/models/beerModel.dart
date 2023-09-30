class BeerModel {
  int id = 0;
  String name = "";
  String price = "";
  String image = "";

  BeerModel(this.id, this.name, this.price, this.image);

  BeerModel.fromJSON(Map<String, dynamic> json) {
    this.id = json["id"];
    this.name = json["name"];
    this.price = json["price"];
    this.image = json["image"];
  }
}