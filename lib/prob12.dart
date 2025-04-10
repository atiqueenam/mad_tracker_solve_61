import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 12',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CustomContainerScreen(),
    );
  }
}

class CustomContainerScreen extends StatelessWidget {
  const CustomContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem 12', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.blue.shade700, width: 2.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(20, 20),
              ),
            ],
          ),
          child: const Text(
            'Md Atique Enam',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
