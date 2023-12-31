import 'package:essen/assets.dart';
import 'package:essen/providers/food_card_provider.dart';
import 'package:flutter/material.dart';
import 'package:essen/constants.dart';
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

  FoodCardProvider get provider {
    return Provider.of<FoodCardProvider>(context, listen: false);
  }

  Color? screenColor;
  int index = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.75,
    );
    screenColor = provider.foodCards[0].color;
    super.initState();
  }

  // FoodCardProvider get provider {
  //   return Provider.of<FoodCardProvider>(context, listen: false);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          color: screenColor,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
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
                    PageView.builder(
                      controller: _pageController,
                      itemCount: provider.foodCards.length,
                      onPageChanged: (value) {
                        setState(() {
                          screenColor = provider.foodCards[value].color;
                          index = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return AnimatedBuilder(
                            animation: _pageController,
                            builder: (context, child) {
                              double value = 0;
                              if (_pageController.position.haveDimensions) {
                                value = index.toDouble() -
                                    (_pageController.page ?? 0);
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
                                    // flex: 4,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: value * 120),
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
                                            const SizedBox(height: 10),
                                            Text(
                                              provider.foodCards[index].title,
                                              style: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                const Row(
                                                  children: [
                                                    Icon(Icons.star,
                                                        color: Colors.yellow),
                                                    Text(
                                                      "4.8",
                                                      style: kfoodCardBody,
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  provider.foodCards[index]
                                                      .description,
                                                  style: kfoodCardBody,
                                                ),
                                                const Text("\$\$\$",
                                                    style: kfoodCardBody),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            const Text(
                                              "10 - 15 Min",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                          pageContent:
                                              provider.foodCards[index],
                                        )));
                          },
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
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
