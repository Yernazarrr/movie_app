import 'package:flutter/material.dart';
import 'package:flutter_lessons/app/models/film_card_model.dart';
import 'package:flutter_lessons/app/widgets/film_tile.dart';

class FilmList extends StatelessWidget {
  const FilmList({super.key});

  static final List<FilmCardModel> films = <FilmCardModel>[
    const FilmCardModel(
      id: 1,
      title: 'The Shawshank Redemption',
      picture: 'assets/images/shawshank.jpg',
      voteAverage: 9.3,
      releaseDate: '1994',
      description:
          'Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.',
    ),
    const FilmCardModel(
        id: 2,
        title: 'The Godfather',
        picture: 'assets/images/godfather.jpg',
        voteAverage: 9.2,
        releaseDate: '1972',
        description:
            'Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger'),
    const FilmCardModel(
        id: 3,
        title: 'The Dark Knight',
        picture: 'assets/images/the dark knight.jpg',
        voteAverage: 9.0,
        releaseDate: '2008',
        description:
            'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'),
    const FilmCardModel(
        id: 4,
        title: 'Schindler' 's List',
        picture: 'assets/images/schindler.jpg',
        voteAverage: 9.0,
        releaseDate: '1993',
        description:
            'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'),
    const FilmCardModel(
      id: 5,
      title: 'The Lord of the Rings: The Return of the King',
      picture: 'assets/images/the lord of rings.jpg',
      voteAverage: 9.0,
      releaseDate: '2003',
      description: 'Gandalf and Aragorn lead the World of Men against Sauron'
          's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: ((context, index) => FilmTile.fromModel(
              model: films[index % films.length],
            )));
  }
}
