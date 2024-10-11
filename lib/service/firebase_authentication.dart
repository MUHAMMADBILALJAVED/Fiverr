import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {
  // for authentication
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // for signup
  Future<User?> createUserWithEmailandPassword(
      String email, String password, String name) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      log("Something went wrong" as num);
    }
    return null;
  }

  // for login
  Future<User?> loginUserWithEmailandPassword(
      String email, String password) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } catch (e) {
      log("Something went wrong" as num);
    }
    return null;
  }

  Future<void> signOut() async {
    try {
      await  _auth.signOut();
    } catch (e) {
      log("Something went wrong" as num);
    }
  }
}
