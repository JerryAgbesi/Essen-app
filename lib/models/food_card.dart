import 'package:flutter/material.dart';

class FoodCard {
  String companyLogo;
  String image;
  String title;
  String description;
  Color color;
  List<String> menu = [];
  List<String> snacks = [];
  List<String> foods = [];

  FoodCard({
    required this.companyLogo,
    required this.title,
    required this.image,
    required this.description,
    required this.color,
    required this.menu,
    required this.snacks,
    required this.foods,
  });
}
