import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 11',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ImageFromAssetsScreen(),
    );
  }
}

class ImageFromAssetsScreen extends StatelessWidget {
  const ImageFromAssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Problem -11')),
      body: Center(
        child: Image.asset('assets/images/me.png', height: 500, width: 500),
      ),
    );
  }
}
