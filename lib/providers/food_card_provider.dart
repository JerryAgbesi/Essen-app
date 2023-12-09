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
        color: Color(0xff028940),
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
        image: Asset.chickenbucket,
        description: "Burger,American",
        color: Color(0xffC41230),
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
        image: Asset.coffee,
        description: "Sandwich,Healthy",
        color: Color.fromARGB(255, 25, 126, 129),
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
        companyLogo: Asset.domino,
        title: "Dominos",
        image: Asset.pizza2,
        description: "Sandwich,Healthy",
        color: Color(0xff017EB4),
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
        companyLogo: Asset.shakeshack,
        title: "Shake Shack",
        image: Asset.sandwich4,
        description: "Burger,American",
        color: Colors.black,
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
