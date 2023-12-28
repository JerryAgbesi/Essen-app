import 'package:essen/widgets/snack_list.dart';
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
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250,
                actions: const [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.search,
                      size: 25,
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Padding(
                    padding: EdgeInsets.only(top: 80, right: 40),
                    child: SafeArea(
                      child: Image.asset(
                        widget.pageContent.image,
                      ),
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 250,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            widget.pageContent.title,
                            style: kfoodCardDetails,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    "4.8",
                                    style: kfoodCardBody,
                                  ),
                                ],
                              ),
                              Text(widget.pageContent.description,
                                  style: kfoodCardBody),
                              const Text("\$\$\$", style: kfoodCardBody),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(235, 235, 250, 1)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              '10 - 15 min',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 10),
                          child: Container(
                            height: 120,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => SnackList(
                                  index: index,
                                  foodCard: widget.pageContent,
                                  color: widget.pageContent.color),
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 40),
                            child: Text(
                              "Breakfast Value Meals",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
