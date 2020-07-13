import 'package:flutter/material.dart';
import 'package:web_requests_study/model/post.dart';
import 'post_card.dart';

class PostList extends StatelessWidget {
  PostList() : super();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
        future: Post.fetchPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemBuilder: (BuildContext _context, int i) {
                if (i < snapshot.data.length) {
                  return buildPostCard(snapshot.data[i]);
                }
              },
            ));
          } else if (snapshot.hasError) {
            //Show error Widget
            throw Exception(snapshot.error);
          } else {
            // Not done loading, show spinner
            return Container(
              padding: EdgeInsets.all(15),
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
