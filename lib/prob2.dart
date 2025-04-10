import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String displayText = "Hello!"; // Initial text

  // Method to update the text when the button is pressed
  void changeText() {
    setState(() {
      displayText = "Button Pressed"; // Update the text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Problem 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              displayText, // Display the current text
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeText, // Call the method when button is pressed
              child: Text('click me!'),
            ),
          ],
        ),
      ),
    );
  }
}
