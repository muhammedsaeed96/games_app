class GameModel {
  GameModel({
    required this.id,
    required this.name,
    required this.slug,
    this.description,
    required this.released,
    required this.backgroundImage,
    required this.rating,
    required this.review,
    required this.screenshots,
  });

  final int id;
  final String name;
  final String slug;
  final String? description;
  final String released;
  final String backgroundImage;
  final double rating;
  final int review;
  final List<dynamic> screenshots;

  factory GameModel.fromJson(Map<String, dynamic> game) {
    return GameModel(
      id: game['id'],
      name: game['name'],
      slug: game['genres'][0]['slug'],
      released: game['released'],
      backgroundImage: game['background_image'],
      rating: game['rating'],
      review: game['reviews_count'],
      screenshots: game['short_screenshots'],
    );
  }
}
