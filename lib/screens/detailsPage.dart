import 'package:flutter/material.dart';
import 'package:essen/models/food_card.dart';
import 'package:essen/widgets/details_page_appbar.dart';

class DetailsPage extends StatefulWidget {
  final FoodCard pageContent;
  const DetailsPage({required this.pageContent});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              const DetailsPageAppBar(),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                )
              ]))
            ],
          )
        ],
      ),
    );
  }
}
