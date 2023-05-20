import 'package:flutter/material.dart';
import 'package:quize_app/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 55, 75, 255), Color.fromARGB(255, 146, 202, 255)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: const StartScreen(),
      ),
    ),
  ));
}
