import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Task 1')),
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 40,
              color: const Color.fromARGB(255, 143, 45, 255),
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),
        ),
      ),
    );
  }
}
