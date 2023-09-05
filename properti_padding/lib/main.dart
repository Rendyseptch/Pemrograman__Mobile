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
          appBar: AppBar(title: const Text("Contoh Padding")),
          body: Container(
              padding: const EdgeInsets.only(left: 20),
              margin: const EdgeInsets.all(20),
              height: 200,
              width: 200,
              alignment: Alignment.topLeft,
              color: Colors.blueGrey,
              child: const Text(
                'Ayo Belajar Flutter',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))),
    );
  }
}
