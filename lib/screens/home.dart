import 'package:essen/assets.dart';
import 'package:essen/providers/food_card_provider.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:essen/screens/detailsPage.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final CarouselController _carouselController = CarouselController();
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.75,
    );
    super.initState();
  }

  FoodCardProvider get provider {
    return Provider.of<FoodCardProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: provider.foodCards[0].color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.white.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(35),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "ASAP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              ),
              Text(
                "Work",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // Container(
                //   color: Colors.amber,
                // ),
                PageView.builder(
                  controller: _pageController,
                  itemCount: provider.foodCards.length,
                  itemBuilder: (context, index) {
                    // final card = provider.foodCards[index];
                    return AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          double value = 0;
                          if (_pageController.position.haveDimensions) {
                            value =
                                index.toDouble() - (_pageController.page ?? 0);
                            value = (value.abs() * 0.3).clamp(-1, 1);
                          } else {
                            value = index == 1 ? 0.3 : 0.0;
                          }
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(70.0),
                                child: Center(
                                  child: Image.asset(
                                    provider.foodCards[index].companyLogo,
                                    height: 100,
                                    width: 250,
                                  ),
                                ),
                              ),
                              //restaurant card
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(top: value * 120),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 250,
                                          margin: const EdgeInsets.all(20),
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: provider
                                                  .foodCards[index].color),
                                          child: Image.asset(
                                            provider.foodCards[index].image,
                                            width: double.infinity,
                                            height: 180,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        });
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          "Order From Here",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
