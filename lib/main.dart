import 'package:flutter/material.dart';
import 'package:roll_dice/home_view.dart';

void main() {
  runApp(const RollDice());
}

class RollDice extends StatelessWidget {
  const RollDice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Roll Dice',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
