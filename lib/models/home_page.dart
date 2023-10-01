import 'package:flutter/material.dart';
import 'package:flutter_lessons/models/film_card_model.dart';

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
      body: const _FilmList(),
    );
  }
}

class _FilmList extends StatelessWidget {
  const _FilmList({super.key});

  static final List<FilmCardModel> films = <FilmCardModel>[
    const FilmCardModel(
      id: 1,
      title: 'The Shawshank Redemption',
      picture:
          'https://www.nfkino.no/sites/nfkino.no/files/media-images/2023-03/The%20Shawshank%20Redemption_0.png',
      voteAverage: 9.3,
      releaseDate: '1994',
      description:
          'Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.',
    ),
    const FilmCardModel(
        id: 2,
        title: 'The Godfather',
        picture:
            'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UY281_CR4,0,190,281_.jpg',
        voteAverage: 9.2,
        releaseDate: '1972',
        description:
            'Don Vito Corleone, head of a mafia family, decides to hand over his empire to his youngest son Michael. However, his decision unintentionally puts the lives of his loved ones in grave danger'),
    const FilmCardModel(
        id: 3,
        title: 'The Dark Knight',
        picture:
            'https://musicart.xboxlive.com/7/abb02f00-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080',
        voteAverage: 9.0,
        releaseDate: '2008',
        description:
            'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'),
    const FilmCardModel(
        id: 4,
        title: 'Schindler' 's List',
        picture:
            'https://m.media-amazon.com/images/I/81+H4lZVw+L._AC_UF894,1000_QL80_.jpg',
        voteAverage: 9.0,
        releaseDate: '1993',
        description:
            'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.'),
    const FilmCardModel(
      id: 5,
      title: 'The Lord of the Rings: The Return of the King',
      picture: 'https://b1.filmpro.ru/c/5512.432x604.jpg',
      voteAverage: 9.0,
      releaseDate: '2003',
      description: 'Gandalf and Aragorn lead the World of Men against Sauron'
          's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        films.length,
        (int index) => Padding(
          padding: const EdgeInsets.all(16),
          child: FilmTile.fromModel(model: films[index]),
        ),
      ),
    );
  }
}

class FilmTile extends StatelessWidget {
  const FilmTile({
    super.key,
    required this.id,
    required this.title,
    required this.picture,
    required this.voteAverage,
    required this.releaseDate,
    required this.description,
  });

  final int id;
  final String title;
  final String picture;
  final double voteAverage;
  final String releaseDate;
  final String description;

  factory FilmTile.fromModel({required FilmCardModel model, Key? key}) {
    return FilmTile(
      id: model.id,
      title: model.title,
      picture: model.picture,
      voteAverage: model.voteAverage,
      releaseDate: model.releaseDate,
      description: model.description,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Image.network(
            picture,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
        const Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[Icon(Icons.star), Text('4.5')],
                )
              ],
            )),
      ],
    );
  }
}
