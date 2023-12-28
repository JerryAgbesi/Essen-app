import 'package:essen/models/food_card.dart';
import 'package:essen/providers/food_card_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SnackList extends StatefulWidget {
  final int index;
  final FoodCard foodCard;
  final Color color;

  const SnackList({
    required this.index,
    required this.foodCard,
    required this.color,
  });

  @override
  State<SnackList> createState() => _SnackListState();
}

class _SnackListState extends State<SnackList> {
  FoodCardProvider get provider {
    return Provider.of<FoodCardProvider>(context);
  }

  bool isSnackSelected = false;

  List<String> titles = [
    'Dessert',
    'Beverages',
    'Appetizer',
    'Side dish 1',
    'Side dish 2',
    'Side dish 3',
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSnackSelected = !isSnackSelected;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: 100,
        decoration: BoxDecoration(
          color: isSnackSelected
              ? widget.color
              : Color.fromRGBO(235, 235, 250, 1).withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                widget.foodCard.snacks[widget.index],
                width: 60,
              ),
              Text(
                titles[widget.index],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SanFransisco',
                  color: isSnackSelected ? Colors.white : Colors.black,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
