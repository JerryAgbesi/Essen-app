import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:essen/screens/snack_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  List<dynamic> cards = [
    {
      'title': 'McDonalds',
      'image': 'assets/images/md1.png',
      'price': 10.99,
      'color': Colors.red.shade400,
      'description': 'Burger,American',
      'rating': 4.5,
      'reviews': 100,
    },
    {
      'title': 'Subway',
      'image': 'assets/images/subway1.png',
      'price': 15.99,
      'color': Colors.green.shade400,
      'description': 'Sandwich,Healthy',
      'rating': 4.8,
      'reviews': 200,
    },
    {
      'title': 'KFC',
      'image': 'assets/images/chicken3.png',
      'price': 12.99,
      'color': Colors.red.shade500,
      'description': 'Chicken,American',
      'rating': 4.7,
      'reviews': 150,
    },
    {
      'title': 'Starbucks',
      'image': 'assets/images/coffee2.png',
      'color': Colors.blue.shade900,
      'price': 8.99,
      'description': 'Coffee,Beverages',
      'rating': 4.6,
      'reviews': 120,
    },
    {
      'title': 'Shake Shack',
      'image': 'assets/images/pizza1.png',
      'color': Colors.yellow.shade700,
      'price': 9.99,
      'description': 'Fries,American',
      'rating': 4.9,
      'reviews': 250,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(color: Colors.red.shade300),
            Positioned(
              bottom: 0,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                    height: 500,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.7,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                carouselController: _carouselController,
                items: cards.map(
                  (card) {
                    return Builder(
                      builder: (BuildContext context) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const SnackPage()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 200,
                                    margin: const EdgeInsets.all(20),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red.shade400),
                                    child: Image.asset(
                                      card['image'],
                                      width: 230,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    card['title'],
                                    style: const TextStyle(
                                      fontFamily: "Sanfrancisco",
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow.shade700,
                                            size: 15,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            "${card['rating']}",
                                            style: const TextStyle(
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                        ],
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        card['description'],
                                        style: const TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        "\$${card['price']}",
                                        style: const TextStyle(
                                          fontFamily: "Sanfrancisco",
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  const Text(
                                    "10-15 Min",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
