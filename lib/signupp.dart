import 'package:flutter/material.dart';

class signupp extends StatelessWidget {
  const signupp({super.key});

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
                "SIGN UP",
              ),

              SizedBox(height: 30),
              Text(
                "create an account it's free",
              ),
              SizedBox(height: 40),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0,350, 0),
                 child: Text("Username",style: TextStyle(fontSize: 12, color: Colors.black,)),
               ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,

                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.fromLTRB(0, 0,360, 0),
                child: Text("Email",style: TextStyle(fontSize: 12, color: Colors.black,)),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,

                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.fromLTRB(0, 0,340, 0),
                child: Text("Password",style: TextStyle(fontSize: 12, color: Colors.black,)),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    fillColor: Colors.white,

                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.fromLTRB(0, 0,300, 0),
                child: Text("Confirm Password",style: TextStyle(fontSize: 12, color: Colors.black,)),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child: TextField(
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
                onPressed: () {},
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
              ),SizedBox(height: 50),
              Text(
                "already have an account ? LOGIN",
                style: TextStyle(fontSize: 17, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
