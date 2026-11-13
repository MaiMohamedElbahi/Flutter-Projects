import 'package:flutter/material.dart';

class ProductModel{
  final String Name;
  final double Price;
  final IconData Icon;
  int Quantity;
  int index;
  int cartindex = -1;

  ProductModel({
    required this.Name,
    required this.Price,
    required this.Icon,
    required this.index,
    this.Quantity = 0
  });
}