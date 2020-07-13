import 'package:flutter/material.dart';
import 'package:web_requests_study/model/dummy_data.dart';

class PostList extends StatelessWidget {
  PostList() : super();

  final posts = getPosts();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (BuildContext _context, int i) {
        if (i < posts.length) {
          return Text(posts[i].title);
        }
      },
    ));
  }
}
