import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageURL;
  bool isFavorite;

  Product({
   @required this.id,
   @required this.title,
   @required this.description,
   @required this.price,
    this.isFavorite = false,
   @required this.imageURL
});

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}