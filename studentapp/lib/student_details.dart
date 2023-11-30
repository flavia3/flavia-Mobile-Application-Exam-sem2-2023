import 'package:flutter/material.dart';

class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text("Name: John Doe",
            style: TextStyle(color: Colors.black, fontSize: 15)),
        const Text("Age: 20",
            style: TextStyle(color: Colors.black, fontSize: 15)),
        const Text("Grade:A",
            style: TextStyle(color: Colors.black, fontSize: 15))
      ]),
    );
    // );
  }
}
