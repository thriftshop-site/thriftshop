import 'package:cloud_firestore/cloud_firestore.dart';

// Feature Request
class PostModel {
  String id;
  String title;
  String content;
  DateTime createdAt;

  PostModel.fromDocumentSnapshot({DocumentSnapshot documentSnapshot}) {
    id = documentSnapshot.id;
    title = documentSnapshot["title"];
    content = documentSnapshot["content"];
    createdAt = documentSnapshot["createdAt"];
  }

  PostModel({this.id, this.title, this.content, this.createdAt});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      createdAt: json['createdAt'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'createdAt': createdAt
    };
  }
}
