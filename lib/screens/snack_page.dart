import 'package:flutter/material.dart';

class SnackPage extends StatefulWidget {
  const SnackPage({super.key});

  @override
  State<SnackPage> createState() => _SnackPageState();
}

class _SnackPageState extends State<SnackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Going to learn Provider, I'll be back")),
    );
  }
}
