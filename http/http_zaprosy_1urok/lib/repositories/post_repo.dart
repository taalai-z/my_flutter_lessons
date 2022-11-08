import 'package:http_zaprosy_1urok/models/post_model.dart';
import 'package:http/http.dart' as http;

class PostRepo {
  Future<http.Response> getPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    return await http.get(url);
  }
}
