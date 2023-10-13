import 'package:flutter/material.dart';
import 'package:flutter_lessons/features/home/widgets/film_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.sort)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: const FilmList(),
    );
  }
}
