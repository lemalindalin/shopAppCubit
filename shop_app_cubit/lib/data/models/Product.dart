import 'package:flutter/material.dart';
import 'package:shop_app_cubit/presentation/theme/strings.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office code",
    price: 238,
    size: 12,
    description: descriptionForProduct,
    image: "assets/images/bag1.png",
    color: Color(0xFF9C717B),
  ),
  Product(
    id: 2,
    title: "Office code2",
    price: 234,
    size: 12,
    description: descriptionForProduct,
    image: "assets/images/bag2.png",
    color: Color(0xFFEAC0E6),
  ),
  Product(
    id: 3,
    title: "Office code",
    price: 700,
    size: 12,
    description: descriptionForProduct,
    image: "assets/images/bag1.png",
    color: Color(0xFF9C717B),
  ),
  Product(
    id: 4,
    title: "Office code",
    price: 500,
    size: 12,
    description: descriptionForProduct,
    image: "assets/images/bag2.png",
    color: Color(0xFFEAC0E6),
  ),
  Product(
    id: 5,
    title: "Office code",
    price: 234,
    size: 12,
    description: descriptionForProduct,
    image: "assets/images/bag2.png",
    color: Color(0xFFEAC0E6),
  ),
  Product(
    id: 6,
    title: "Dalin code",
    price: 945,
    size: 12,
    description: descriptionForProduct,
    image: "assets/images/bag1.png",
    color: Color(0xFFEAC0E6),
  ),
];
