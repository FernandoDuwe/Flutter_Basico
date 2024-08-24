class TaskModel {
  String title = "";
  bool done = false;
  String id = "";

  TaskModel.undoneTask(this.title);

  TaskModel.fromJson(Map<String, dynamic> json, this.id) {
    this.title = json["title"];
    this.done  = json["done"];
  }

  Map<String, dynamic> toJson() {
    return {
      "title": this.title,
      "done": this.done
    };
  }
}