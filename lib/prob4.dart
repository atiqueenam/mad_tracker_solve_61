import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styling Example',
      home: const TextStyleScreen(),
    );
  }
}

class TextStyleScreen extends StatelessWidget {
  const TextStyleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Problem 4')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Bold and Large Text',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'Italic and Medium Text',
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'Small and Normal Weight Text',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'Light Weight and Large Text',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w300,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'Underlined and Custom Font',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
                decoration: TextDecoration.underline,
                fontFamily: 'Arial',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
