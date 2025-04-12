import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  void toggleDrawer() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Problem 19'),
        backgroundColor: const Color.fromARGB(255, 3, 129, 255),
        foregroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: toggleDrawer),
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              'Hello !',
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
          ),
          SlideTransition(
            position: _slideAnimation,
            child: Container(
              width: 250,
              height: double.infinity,
              color: const Color.fromARGB(232, 6, 176, 228),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Drawer Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                    onTap: toggleDrawer,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.white),
                    title: Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: toggleDrawer,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
