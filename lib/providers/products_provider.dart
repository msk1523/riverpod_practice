import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    title: 'Product 1',
    price: 100,
    image: 'assets/products/shorts.png',
  ),
  Product(
    id: '2',
    title: 'Product 2',
    price: 200,
    image: 'assets/products/karati.png',
  ),
  Product(
    id: '3',
    title: 'Product 3',
    price: 300,
    image: 'assets/products/jeans.png',
  ),
  Product(
    id: '4',
    title: 'Product 4',
    price: 400,
    image: 'assets/products/backpack.png',
  ),
  Product(
    id: '5',
    title: 'Product 5',
    price: 500,
    image: 'assets/products/drum.png',
  ),
  Product(
    id: '6',
    title: 'Product 6',
    price: 600,
    image: 'assets/products/suitcase.png',
  ),
  Product(
    id: '7',
    title: 'Product 7',
    price: 700,
    image: 'assets/products/skates.png',
  ),
  Product(
    id: '8',
    title: 'Product 8',
    price: 800,
    image: 'assets/products/guitar.png',
  ),
];

final productsProvider = Provider((ref) {
  return allProducts;
});

final reducedProductsProvider = Provider((ref) {
  return allProducts.where((product) => product.price < 500).toList();
});
