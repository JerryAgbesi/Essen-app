import 'package:flutter/material.dart';

import 'package:essen/models/food_card.dart';

class FoodCardProvider<T> with ChangeNotifier {
  List<FoodCard> get foodCards {
    return <FoodCard>[
      FoodCard(companyLogo: ),
    ];
  }
}
