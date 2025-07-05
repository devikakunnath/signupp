import 'package:flutter/material.dart';
import 'package:signup/services.dart';

import 'login.dart';

class signupp extends StatefulWidget {
  const signupp({super.key});

  @override
  State<signupp> createState() => _signuppState();
}

class _signuppState extends State<signupp> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 1000,
          width: 800,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              SizedBox(height: 80),
              Text(
                "SIGN UP",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 30),
              Text(
                "create an account it's free",
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 350, 0),
                child: Text(
                  "username",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 360, 0),
                child: Text(
                  "email",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 340, 0),
                child: Text(
                  "password",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),
                child: Text(
                  "confirm password",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  controller: confirmcontroller,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  signup(
                    username: usernamecontroller.text,
                    email: emailcontroller.text,
                    password: passwordcontroller.text,
                    confirm: confirmcontroller.text,
                    context: context
                  );
                },
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 50),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 50),

              Text(
                "already have an account ? ",
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
                child: Text("LOGIN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
