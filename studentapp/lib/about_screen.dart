import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "About me",
          style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              )
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Name: Nakyejjwe Flavia",
             style: TextStyle(
              color: Colors.black,
              fontSize: 15)
          ),
            const Text("Student number: 026 ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15)
          ),
            const Text("Email: nakyejjweflavia19@gmail.com",
            style: TextStyle(
          color: Colors.black,
          fontSize: 15
        )
         )
        ]
        ),
      ),
    );
  }
}