import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:signup/login.dart';
import 'package:signup/signupp.dart';
import 'package:signup/welcome.dart';

void main() async { await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(home: welcome(),debugShowCheckedModeBanner: false));
}

