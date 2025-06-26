import 'package:flutter/material.dart';
import 'package:signup/login.dart';
import 'package:signup/signupp.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

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
              SizedBox(
                height: 100,
                child: Text(
                  "WELCOME",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 150),

              Container(
                height: 354,
                width: 600,
                child: Image(
                  image: NetworkImage(
                    'https://media.istockphoto.com/id/1138947293/photo/access-window-enter-login-and-password-cyber-protection.webp?a=1&b=1&s=612x612&w=0&k=20&c=A3M781L8lTftiK5KRm_SinsvrooWxf11lbQ95TsIMmo=',
                  ),
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => login(),));},
                child: const Text(
                  "LOGIN",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 50),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => signupp(),));},
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
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
