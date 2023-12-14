import 'package:flutter/material.dart';
import 'package:essen/models/food_card.dart';
import 'package:essen/widgets/details_page_appbar.dart';
import 'package:essen/constants.dart';

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
      backgroundColor: widget.pageContent.color,
      body: Stack(children: [
        CustomScrollView(
          slivers: [
            DetailsPageAppBar(pagecontent: widget.pageContent),
          ],
        ),
      ]),
    );
  }
}
