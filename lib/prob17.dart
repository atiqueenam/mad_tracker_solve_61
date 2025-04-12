import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 17',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: SettingsScreen(
        isDarkMode: _isDarkMode,
        onToggleDarkMode: _toggleDarkMode,
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggleDarkMode;

  const SettingsScreen({
    super.key,
    required this.isDarkMode,
    required this.onToggleDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Problem 17'),
        backgroundColor: const Color.fromARGB(255, 189, 117, 11),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ListTile(
                  title: const Text('Dark Mode'),
                  trailing: Switch(
                    value: isDarkMode,
                    onChanged: onToggleDarkMode,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: Text(
                'Dark Mode is ${isDarkMode ? "Enabled !" : "Disabled !"}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
