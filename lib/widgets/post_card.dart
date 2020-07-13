import 'package:flutter/material.dart';
import 'package:web_requests_study/model/post.dart';

Widget buildPostCard(Post post) {
  return Card(
    child: Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            post.title,
            style: TextStyle(fontSize: 18),
          ),
          Text('iOS Android Mobile FLutter')
        ],
      ),
    ),
  );
}
