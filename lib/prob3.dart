import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Problem 3', home: const ItemListScreen());
  }
}

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> items = List.generate(20, (index) => index + 1);

    return Scaffold(
      appBar: AppBar(title: const Text('Prob 3- List of Items')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text('Item ${items[index]}'));
        },
      ),
    );
  }
}
