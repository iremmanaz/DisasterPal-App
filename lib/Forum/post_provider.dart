import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'post.dart';

class PostProvider with ChangeNotifier {
  List<Post> _posts = [];

  List<Post> get posts => _posts;

  void addPost(String author, String content) {
    final post = Post(
      id: Uuid().v4(),
      author: author,
      content: content,
      timestamp: DateTime.now(),
    );
    _posts.add(post);
    notifyListeners();
  }
}
