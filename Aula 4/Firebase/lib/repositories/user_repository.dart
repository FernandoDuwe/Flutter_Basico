import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vaquinha/models/user_model.dart';

class UserRepository {
  static Future<List<UserModel>> getAll() async {
    QuerySnapshot query =
        await FirebaseFirestore.instance.collection("users").orderBy("name").get();

    if (query.docs.isEmpty) return [];

    List<UserModel> list = [];

    query.docs.forEach((element) => list.add(UserModel.fromJson(
        element.data() as Map<String, dynamic>, element.id)));

    return list;
  }

  static Future<void> add(UserModel userModel) async {
    await FirebaseFirestore.instance
        .collection("users")
        .add(userModel.toJson());
  }

  static Future<void> edit(UserModel userModel) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(userModel.id)
        .update(userModel.toJson());
  }
}
