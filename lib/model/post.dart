import 'dart:convert';
import 'package:http/http.dart';

class Post {
  final String title;
  final String url;
  final List<String> tags;

  Post(this.title, this.url, this.tags);

  Post.fromJSON(Map<String, dynamic> json)
      : title = json['title'] ?? '',
        url = json['url'] ?? '',
        tags = json['tags'].cast<String>() ?? [];

  Map<String, dynamic> toJSON() => {'title': title, 'url': url, 'tags': tags};

  static Future<List<Post>> fetchPosts() async {
    try {
      // ANDROID URL = 'http://10.0.2.2:8080/posts
      final response = await get('http://localhost:8080/posts');

      // Everything here, is AFTER the request is done
      if (response.statusCode == 200) {
        List<dynamic> jsonPostList = jsonDecode(response.body);
        List<Post> posts = [];
        for (var x in jsonPostList) {
          posts.add(Post.fromJSON(x));
        }
        return posts;
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
