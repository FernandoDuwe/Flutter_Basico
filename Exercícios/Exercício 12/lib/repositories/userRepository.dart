import 'package:flutter_basico/models/userInsertModel.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  Future<bool> Insert(UserInsertModel prUserModel) async {
    Uri vrURL = Uri.http("autc.com.br", "/api/index.php", prUserModel.toJSON());

    http.Response vrResponse = await http.post(vrURL);

    return vrResponse.statusCode == 200;
  }
}