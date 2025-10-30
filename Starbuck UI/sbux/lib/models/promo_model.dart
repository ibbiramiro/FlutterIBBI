class PromoModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String category;
  final List<String> prizes;
  final List<String> monthlyPerks;

  PromoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.prizes,
    required this.monthlyPerks,
  });
}
