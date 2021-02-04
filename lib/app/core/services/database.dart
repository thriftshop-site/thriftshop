import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/user.dart';
import '../../modules/posts/models/post.dart';

class Database {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  CollectionReference _users = FirebaseFirestore.instance.collection('users');

  Future<bool> registerUser(UserModel user) async {
    try {
      _createUserFirestore(user);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  void _createUserFirestore(UserModel user) {
    _db.doc('/users/${user.uid}').set(user.toMap());
  }

  Future<UserModel> getUser(String uid) async {
    try {
      DocumentSnapshot _doc = await _users.doc(uid).get();
      return UserModel.fromDocumentSnapshot(documentSnapshot: _doc);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> newPost(String content, String uid) async {
    try {
      await _users.doc(uid).collection("posts").add({
        'created_at': Timestamp.now(),
        'content': content,
        'done': false,
      });
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Stream<List<PostModel>> postStream(String uid) {
    return _users
        .doc(uid)
        .collection("posts")
        .orderBy("dateCreated", descending: true)
        .snapshots()
        .map((QuerySnapshot query) {
      List<PostModel> posts = List.empty();
      query.docs.forEach((post) {
        posts.add(PostModel.fromDocumentSnapshot(documentSnapshot: post));
      });
      return posts;
    });
  }

  Future<void> updatePost(PostModel post, String uid, String postId) async {
    try {
      _users.doc(uid).collection("posts").doc(postId).update(post.toMap());
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
