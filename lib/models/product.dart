class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  // Factory constructor to create a Product from a JSON map (for future scaling)
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
    );
  }
}

// --- Mock Data (Replace with external JSON loading if preferred) ---
final List<Product> mockProducts = [
  Product(
    id: 'p1',
    name: 'Stylish Sneakers',
    description: 'Comfortable and trendy canvas shoes.',
    price: 49.99,
    imageUrl: 'https://images.unsplash.com/photo-1594931302824-3f13a3b04c53',
  ),
  Product(
    id: 'p2',
    name: 'Leather Wallet',
    description: 'Genuine leather bi-fold wallet.',
    price: 29.50,
    imageUrl: 'https://images.unsplash.com/photo-1594931302824-3f13a3b04c53',
  ),
  Product(
    id: 'p3',
    name: 'Leather Shoes',
    description: 'Genuine leather Shoes.',
    price: 19.50,
    imageUrl: 'https://images.unsplash.com/photo-1594931302824-3f13a3b04c53',
  ),
  // Add more products here...
];