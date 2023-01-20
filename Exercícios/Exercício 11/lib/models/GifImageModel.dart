class GifImageModel {
  String id = "";
  String title = "";
  String imageURL = "";
  String usuario = "";

  GifImageModel.fromJSON(Map<String, dynamic> prData) {
    this.id = prData["id"];
    this.title = prData["title"];
    this.imageURL = prData["images"]["fixed_width"]["url"];

    print(this.imageURL);
  }
}