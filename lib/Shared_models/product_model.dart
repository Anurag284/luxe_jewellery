class Product {
  final String productName;
  final String image;
  final String productPrize;
  bool isFavourite;

  Product({
    required this.productName,
    required this.image,
    required this.productPrize,
    this.isFavourite = false,
  });
}
