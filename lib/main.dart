import 'package:flutter/material.dart';
import 'package:flutter_lessons/features/home/pages/home_page.dart';

void main(List<String> args) {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 10, color: Colors.black),
        ),
      ),
      home: const HomePage(
        title: 'Films',
      ),
    );
  }
}
