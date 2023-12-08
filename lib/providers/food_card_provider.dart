import 'package:flutter/material.dart';

import 'package:essen/models/food_card.dart';
import 'package:essen/assets.dart';

class FoodCardProvider<T> with ChangeNotifier {
  List<FoodCard> get foodCards {
    return <FoodCard>[
      FoodCard(
        companyLogo: Asset.macdonnalds,
        title: "McDonald's",
        image: Asset.md1,
        description: "Burger,American",
        color: Color(0xffBD0017),
        menu: [
          Asset.md1,
          Asset.md2,
          Asset.md3,
          Asset.fries1,
          Asset.fries2,
        ],
        snacks: [
          Asset.burger,
          Asset.md2,
          Asset.fries1,
          Asset.food,
          Asset.burger1,
          Asset.md1,
        ],
        foods: [
          'Small Fries',
          'Spicy Chicken Wing',
          'Fries Only',
          'Normal Meal',
          'Chicken Burger'
        ],
      ),
      FoodCard(
        companyLogo: Asset.subway,
        title: "Subway",
        image: Asset.subwayfood,
        description: "Sandwich,Healthy",
        color: Colors.green.shade400,
        menu: [
          Asset.subwayfood,
          Asset.subway2,
          Asset.subway3,
          Asset.subway4,
          Asset.subway5,
        ],
        snacks: [
          Asset.sandwich1,
          Asset.subway1,
          Asset.fries1,
          Asset.subway6,
          Asset.burger1,
          Asset.sandwich2,
        ],
        foods: [
          'Small Fries',
          'Spicy Chicken Wing',
          'Fries Only',
          'Normal Meal',
          'Chicken Burger'
        ],
      ),
      FoodCard(
        companyLogo: Asset.kfc,
        title: "KFC",
        image: Asset.md1,
        description: "Burger,American",
        color: Color(0xffBD0017),
        menu: [
          Asset.md1,
          Asset.md2,
          Asset.md3,
          Asset.fries1,
          Asset.fries2,
        ],
        snacks: [
          Asset.burger,
          Asset.md2,
          Asset.fries1,
          Asset.food,
          Asset.burger1,
          Asset.md1,
        ],
        foods: [
          'Small Fries',
          'Spicy Chicken Wing',
          'Fries Only',
          'Normal Meal',
          'Chicken Burger'
        ],
      ),
      FoodCard(
        companyLogo: Asset.starbucks,
        title: "Starbucks",
        image: Asset.subwayfood,
        description: "Sandwich,Healthy",
        color: Colors.green.shade400,
        menu: [
          Asset.subwayfood,
          Asset.subway2,
          Asset.subway3,
          Asset.subway4,
          Asset.subway5,
        ],
        snacks: [
          Asset.sandwich1,
          Asset.subway1,
          Asset.fries1,
          Asset.subway6,
          Asset.burger1,
          Asset.sandwich2,
        ],
        foods: [
          'Small Fries',
          'Spicy Chicken Wing',
          'Fries Only',
          'Normal Meal',
          'Chicken Burger'
        ],
      ),
      FoodCard(
        companyLogo: Asset.shake,
        title: "Shake Shack",
        image: Asset.md1,
        description: "Burger,American",
        color: Color(0xffBD0017),
        menu: [
          Asset.md1,
          Asset.md2,
          Asset.md3,
          Asset.fries1,
          Asset.fries2,
        ],
        snacks: [
          Asset.burger,
          Asset.md2,
          Asset.fries1,
          Asset.food,
          Asset.burger1,
          Asset.md1,
        ],
        foods: [
          'Small Fries',
          'Spicy Chicken Wing',
          'Fries Only',
          'Normal Meal',
          'Chicken Burger'
        ],
      ),
    ];
  }
}
