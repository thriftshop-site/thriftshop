import 'package:flutter/material.dart';
import '../models/post.dart';

class PostCard extends StatelessWidget {
  final String uid;
  final PostModel post;

  const PostCard({Key key, this.uid, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                post.content,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Checkbox(
            //   value: post.done,
            //   onChanged: (newValue) {
            //     Database().updatePost(newValue, uid, post.todoId);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
