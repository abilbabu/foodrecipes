import 'package:flutter/material.dart';
import 'package:foodrecipes/view/start_screen/strat_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StratScreen(),
    );
  }
}
