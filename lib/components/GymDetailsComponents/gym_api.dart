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

final TrainerDetails testTrainer = new TrainerDetails(
  firstName: 'Kevin',
  lastName: 'Hart',
  avatar: 'assets/images/kevin.png',
  backdropPhoto: 'assets/images/kevin.png',
  location: 'London, England',
  biography: 'Andrew McLan "Kevin" Fraser was an English songwriter and bass '
      'guitarist whose career lasted over forty years, and includes two spells '
      'as a member of the rock band Free, which he helped found in 1968, aged 15.',
  
);