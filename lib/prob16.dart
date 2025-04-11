import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 16',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AnimatedContainerScreen(),
    );
  }
}

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 200.0;
  double _height = 200.0;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  void _changeContainer() {
    setState(() {
      _width = _width == 200.0 ? 300.0 : 200.0;
      _height = _height == 200.0 ? 300.0 : 200.0;
      _color = _color == Colors.green ? Colors.red : Colors.green;
      _borderRadius =
          _width == 200.0
              ? BorderRadius.circular(150)
              : BorderRadius.circular(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem 16'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 240, 243, 33),
                Color.fromARGB(255, 246, 136, 10),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeContainer,
              child: const Text('Click and see magic!'),
            ),
          ],
        ),
      ),
    );
  }
}
