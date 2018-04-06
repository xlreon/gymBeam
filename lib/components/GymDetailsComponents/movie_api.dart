import 'models.dart';

final Movie testMovie = new Movie(
  bannerUrl: 'assets/images/banner.png',
  posterUrl: 'assets/images/poster.png',
  title: 'The Secret Life of Pets',
  rating: 8.0,
  starRating: 4,
  categories: ['Animation', 'Comedy'],
  storyline: 'For their fifth fully-animated feature-film '
      'collaboration, Illumination Entertainment and Universal '
      'Pictures present The Secret Life of Pets, a comedy about '
      'the lives our...',
  photoUrls: [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
  ],
  actors: [
    new Actor(
      name: 'Louis C.K.',
      avatarUrl: 'assets/images/louis.png',
    ),
    new Actor(
      name: 'Eric Stonestreet',
      avatarUrl: 'assets/images/eric.png',
    ),
    new Actor(
      name: 'Kevin Hart',
      avatarUrl: 'assets/images/kevin.png',
    ),
    new Actor(
      name: 'Jenny Slate',
      avatarUrl: 'assets/images/jenny.png',
    ),
    new Actor(
      name: 'Ellie Kemper',
      avatarUrl: 'assets/images/ellie.png',
    ),
  ],
);
