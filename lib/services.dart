
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> signup({
  required String username,
  required String email,
  required String password,
  required String confirm,
  required BuildContext context
})
async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('SIGN UP COMPLETED SUCCESFULLY')));
  }
  catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
Future<void> loginn({
  required String email,
  required String password,
  required BuildContext context

}) async{try { await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('LOGIN COMPLETED SUCCESFULLY')));
}
catch(e){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
}
}
Future<void>forgott({required String email,
  required BuildContext context
})
async{try { await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('LINK SEND')));
}
catch(e){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
}}


