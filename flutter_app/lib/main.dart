import 'package:flutter/material.dart';

void main() => runApp(const GiantPigApp());

class GiantPigApp extends StatelessWidget {
  const GiantPigApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '🐷',
            style: TextStyle(fontSize: 100),
          ),
        ),
      ),
    );
  }
}
