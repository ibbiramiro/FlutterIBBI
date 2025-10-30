class NewsModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String category;
  final DateTime publishedAt;

  NewsModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.publishedAt,
  });
}
