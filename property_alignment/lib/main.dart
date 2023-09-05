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
          appBar: AppBar(title: const Text("Contoh Aligment")),
          body: Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                'Semangat Belajar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ))),
    );
  }
}
