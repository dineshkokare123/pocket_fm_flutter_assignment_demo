import 'package:flutter/material.dart';
import 'package:pocket_fm_flutter_assignment/providers/cart_provider.dart' show CartProvider;
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';
import 'product_detail_screen.dart';
import 'cart_screen.dart';


class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the cart state for the cart icon badge
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopsy - Products'),
        actions: [
          // Cart Icon & Count Badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  // Navigate to Cart Screen
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const CartScreen(),
                  ));
                },
              ),
              if (cart.itemCount > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.red,
                    child: Text(
                      cart.itemCount.toString(),
                      style: const TextStyle(fontSize: 8, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      // List Rendering
      body: ListView.builder(
        itemCount: mockProducts.length, // Uses the mock JSON data
        itemBuilder: (ctx, i) => ProductTile(product: mockProducts[i]),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // Get access to the addItem method on the CartProvider (listen: false as we only call a method)
    final cart = Provider.of<CartProvider>(context, listen: false);

    return ListTile(
      leading: Image.network(product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(product.name),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      trailing: IconButton(
        icon: const Icon(Icons.add_shopping_cart, color: Colors.green),
        onPressed: () {
          // Add to cart directly from the list
          cart.addItem(product); 
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${product.name} added to cart!')),
          );
        },
      ),
      onTap: () {
        // View product details & Navigation Flow
        Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => ProductDetailScreen(product: product),
        ));
      },
    );
  }
}