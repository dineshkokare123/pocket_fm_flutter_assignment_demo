import 'package:flutter/material.dart';
import 'package:pocket_fm_flutter_assignment/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'screens/product_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopsy Store',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      // Start with the Product List Screen
      home: const ProductListScreen(), 
      // Define routes for navigation
      routes: {
        // We'll primarily use push/pop for product details and cart
      },
    );
  }
}