import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpModel extends ChangeNotifier {
  String mail = '';
  String passaword = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signUp() async {
    if (mail.isEmpty) {
      throw ('メールアドレスを入力してください');
    }
    if (passaword.isEmpty) {
      throw ('パスワードを入力してください');
    }
    //todo
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: mail,
      password: passaword,
    ))
        .user;
    final email = user.email;

    Firestore.instance.collection('users').add(
      {
        'email': email,
        'createdAt': Timestamp.now(),
      },
    );
  }
}
