import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_tarefas/models/task_model.dart';

class TaskRepository {
  static Future<List<TaskModel>> getTasks() async {
    QuerySnapshot query = await FirebaseFirestore.instance.collection("tasks").get();

    List<TaskModel> tasks = [];

    query.docs.forEach((element) {
      tasks.add(TaskModel.fromJson(element.data() as Map<String, dynamic>, element.id));
    });

    return tasks;
  }

  static Future<void> addTask(TaskModel task) async {
    await FirebaseFirestore.instance.collection("tasks").add(task.toJson());
  }

  static Future<void> updateTask(TaskModel task) async {
    await FirebaseFirestore.instance.collection("tasks").doc(task.id).update(task.toJson());
  }
}