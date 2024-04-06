import 'dart:math';

import 'package:flutter/material.dart';

class CustomImageDice extends StatelessWidget {
  const CustomImageDice({super.key, required this.activeDice});

  static final Random random = Random();
  final int activeDice;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: random.nextDouble() * 180,
      child: Image.asset(
        'asset/images/dice-$activeDice.png',
        width: 150,
        height: 150,
      ),
    );
  }
}