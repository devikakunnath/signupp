import 'package:flutter/material.dart';
import 'package:signup/services.dart';
import 'package:signup/signupp.dart';
import 'package:signup/forgot.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              Text(
                "LOGIN",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 30),
              Text("Login to your account"),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 350, 0),
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 350, 0),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  loginn(
                    email: emailController.text,
                    password: passwordController.text,
                    context: context,
                  );
                },
                child: const Text(
                  "LOGIN",
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
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>forgot()),
                  );
                },
                child: Text("Forgot Password ?"),
              ),
              SizedBox(height: 20),
              Text(
                'do not have an account',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signupp()),
                  );
                },
                child: Text("SIGN UP"),
              ),
              SizedBox(height: 50),
              Container(
                height: 354,
                width: 600,
                child: Image(
                  image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1720192861639-1524439fc166?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
