import 'package:flutter/material.dart';
import 'package:essen/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Essen',
      theme: ThemeData(
        fontFamily: "Sanfrancisco",
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
