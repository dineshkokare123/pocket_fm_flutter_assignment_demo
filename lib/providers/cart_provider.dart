import 'package:flutter/foundation.dart';
import '../models/product.dart';

// Simple structure for a cart item (product + quantity)
class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  List<CartItem> get items => _items.values.toList();

  int get itemCount => _items.values.fold(0, (sum, item) => sum + item.quantity);

  double get totalAmount {
    return _items.values.fold(0.0, (sum, item) => sum + (item.product.price * item.quantity));
  }

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items.update(
        product.id,
        (existingItem) => CartItem(
          product: existingItem.product,
          quantity: existingItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        product.id,
        () => CartItem(product: product),
      );
    }
    notifyListeners();
    // Optional: Add logic here to save to local storage (SharedPreferences)
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
    // Optional: Add logic here to save to local storage
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
    // Optional: Add logic here to save to local storage
  }
}