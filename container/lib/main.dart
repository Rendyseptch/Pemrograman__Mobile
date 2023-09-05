
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contoh Button"),
        ),
        body: Align(
           alignment: Alignment.topLeft,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.red[900],
            ),
            child: const Text(
              "Button",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}