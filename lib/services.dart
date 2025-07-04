import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> signupp({
  required String username,
  required String email,
  required String password,
  required String confirm,
}) async { await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);



}
