class Gym {
  Gym({
    this.bannerUrl,
    this.posterUrl,
    this.title,
    this.address,
    this.rating,
    this.starRating,
    this.price,
    this.description,
    this.photoUrls,
    this.trainers,
  });

  final String bannerUrl;
  final String posterUrl;
  final String title;
  final String address;
  final double rating;
  final int starRating;
  final int price;
  final String description;
  final List<String> photoUrls;
  final List<Trainer> trainers;
}

class Trainer {
  Trainer({
    this.name,
    this.avatarUrl,
  });

  final String name;
  final String avatarUrl;
}

class TrainerDetails {
  TrainerDetails({
    this.firstName,
    this.lastName,
    this.avatar,
    this.backdropPhoto,
    this.location,
    this.biography,
  });

  final String firstName;
  final String lastName;
  final String avatar;
  final String backdropPhoto;
  final String location;
  final String biography;

}