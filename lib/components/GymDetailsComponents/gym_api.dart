import 'models.dart';

final Gym testGym = new Gym(
  bannerUrl: 'assets/images/banner.png',
  posterUrl: 'assets/images/poster.png',
  title: 'The Secret Life of Pets',
  price: 100,
  rating: 4.1,
  starRating: 4,
  description: 'For their fifth fully-animated feature-film '
      'collaboration, Illumination Entertainment and Universal '
      'Pictures present The Secret Life of Pets, a comedy about '
      'the lives our...',
  photoUrls: [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
  ],
  trainers: [
    new Trainer(
      name: 'Louis C.K.',
      avatarUrl: 'assets/images/louis.png',
    ),
    new Trainer(
      name: 'Eric Stonestreet',
      avatarUrl: 'assets/images/eric.png',
    ),
    new Trainer(
      name: 'Kevin Hart',
      avatarUrl: 'assets/images/kevin.png',
    ),
    new Trainer(
      name: 'Jenny Slate',
      avatarUrl: 'assets/images/jenny.png',
    ),
    new Trainer(
      name: 'Ellie Kemper',
      avatarUrl: 'assets/images/ellie.png',
    ),
  ],
);
