import 'package:firebase_auth/firebase_auth.dart';




class AuthService {

  //1. instance of firebase auth object
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anonymously
  Future signInAnon() async {
    try {
     return await _auth.signInAnonymously();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in email/password

  //regiseter with email/password

  //sign out
}