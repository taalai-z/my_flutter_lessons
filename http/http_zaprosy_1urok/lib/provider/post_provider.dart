import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http_zaprosy_1urok/models/post_model.dart';
import 'package:http_zaprosy_1urok/repositories/post_repo.dart';

class postProvider with ChangeNotifier {
  postProvider({required this.repo});
  final PostRepo repo;
  List<PostModel> posts = [];

  void getPosts() async {
    try {
      final response = await repo.getPosts();
      final data = jsonDecode(response.body) as List;
      posts = data.map((e) => PostModel.fromJSON(e)).toList();
      log(posts.toString());
    } catch (e) {}
  }
}
