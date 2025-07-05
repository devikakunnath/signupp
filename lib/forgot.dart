import 'package:flutter/material.dart';
import 'package:signup/services.dart';
class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey,
      body: Center(
      child: Container(
      height: 1000,
      width: 800,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),child: Column(
        children: [
        SizedBox(
        height: 80,
        child: Text(
          "FORGOT PASSWORD",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.blueAccent),
        ),
      ),
        SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 350, 0),
            child: Text(
              "Email",
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),SizedBox(
            width: 400,
            height: 50,
            child: TextField(controller: emailcontroller,

              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                fillColor: Colors.white,
              ),
            ),
          ),SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {forgott(email: emailcontroller.text, context: context);},
            child: const Text(
              "SEND LINK",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
              minimumSize: Size(250, 50),
              side: BorderSide(color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),]))));
  }
}
