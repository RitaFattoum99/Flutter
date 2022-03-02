class Product {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String date;
  final int quantity;
  final int price;
  final String connect;
  const Product({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.date,
    required this.quantity,
    required this.price,
    required this.connect,
  });
}
