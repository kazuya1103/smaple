import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  String mail = '';
  String passaword = '';

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future login() async {
    if (mail.isEmpty) {
      throw ('メールアドレスを入力してください');
    }
    if (passaword.isEmpty) {
      throw ('パスワードを入力してください');
    }
    //todo
    final result = await _auth.signInWithEmailAndPassword(
      email: mail,
      password: passaword,
    );
    final uid = result.user.uid;
    //端末に保存
  }
}
