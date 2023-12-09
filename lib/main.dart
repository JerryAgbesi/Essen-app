import 'package:essen/providers/food_card_provider.dart';
import 'package:flutter/material.dart';
import 'package:essen/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FoodCardProvider>(create:(_) => FoodCardProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Essen',
        theme: ThemeData(
          fontFamily: "Sanfrancisco",
          useMaterial3: false,
        ),
        home: const Home(),
      ),
    );
  }
}
