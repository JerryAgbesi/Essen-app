import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:essen/models/food_card.dart';
import 'package:essen/assets.dart';

class DetailsPageAppBar extends SliverPersistentHeaderDelegate {
  final FoodCard pagecontent;
  const DetailsPageAppBar({required this.pagecontent});

  @override
  double get minExtent => kToolbarHeight * 4.5;

  @override
  double get maxExtent => kToolbarHeight * 6.5;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final shrinkPercentage =
        (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);

    final backgroundColor =
        Color.lerp(pagecontent.color, Colors.white, shrinkPercentage);

    final iconColor = Color.lerp(Colors.white, Colors.black, shrinkPercentage);

    // final initialProduct = appData.products[0];
    {
      return SliverAppBar(
        centerTitle: true,
        expandedHeight: 270.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          // title: Padding(
          // padding: const EdgeInsets.only(top: 20),
          // child:
          title: SafeArea(
            child: Image.asset(
              pagecontent.image,
              // fit: BoxFit.contain,
              width: 200,
            ),
          ),
          // ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              onPressed: () {},
            ),
          )
        ],
      );
    }
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
