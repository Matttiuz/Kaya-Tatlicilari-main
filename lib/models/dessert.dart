class Dessert {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final String fontFamily;

  Dessert({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    this.fontFamily = 'Delius',
  });
}
