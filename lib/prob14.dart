import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 14',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SwipeListScreen(),
    );
  }
}

class SwipeListScreen extends StatefulWidget {
  const SwipeListScreen({super.key});

  @override
  _SwipeListScreenState createState() => _SwipeListScreenState();
}

class _SwipeListScreenState extends State<SwipeListScreen> {
  final List<String> _items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem 14'),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 132, 37, 215),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(_items[index]),
            direction: DismissDirection.horizontal,
            onDismissed: (direction) {
              String action =
                  direction == DismissDirection.endToStart
                      ? 'deleted'
                      : 'edited';
              setState(() {
                _items.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${_items[index]} $action')),
              );
            },
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              alignment: Alignment.centerLeft,
              child: const Icon(Icons.delete, color: Colors.white, size: 30),
            ),
            secondaryBackground: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.0),
              ),
              alignment: Alignment.centerRight,
              child: const Icon(Icons.edit, color: Colors.white, size: 30),
            ),
            child: Card(
              elevation: 4.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 6.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ListTile(
                leading: const Icon(Icons.list, color: Colors.blue),
                title: Text(
                  _items[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: const Text('Swipe left to delete, right to edit'),
              ),
            ),
          );
        },
      ),
    );
  }
}
