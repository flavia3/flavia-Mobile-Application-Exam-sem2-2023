import 'package:flutter/material.dart';
import 'package:studentapp/about_screen.dart';
import 'package:studentapp/student_details.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyHome();
}

class _MyHome extends State<MyApp> {
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Student App",
          style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              )
          ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              // using setState to set the different state of the 'show details' button
              onPressed: () {
                setState(() {
                  showDetails = !showDetails;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,               
              ),
              child: Text(showDetails ? "Hide Details" : "Show Details"),
            ),
    
            if (showDetails)
             Text("Student Details: John, Age: 20, Grade: A"),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => StudentDetails())),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
              child: const Text("Student Details", style: TextStyle(color: Colors.amber),),
            ),

            const Text("Show Student Details", style: TextStyle(color: Colors.black),),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => AboutScreen())),
                );
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text("About",style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
