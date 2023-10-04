class GifModel {
  String id = "";
  String title = "";
  String urlImage = "";

  GifModel.fromJSON(Map<String, dynamic> prGif) {
    this.id = prGif["id"];
    this.title = prGif["title"];
    this.urlImage = prGif["images"]["fixed_height"]["url"];
  }
}