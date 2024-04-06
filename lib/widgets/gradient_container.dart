import 'package:flutter/material.dart';
import 'package:roll_dice/widgets/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.fromColor, required this.toColor});

  final Alignment startAlignment = Alignment.topLeft;
  final Alignment endAlignment = Alignment.bottomRight;
  final Color fromColor;
  final Color toColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: customDecorationBackground(),
      child: const DiceRoller(),
    );
  }

  BoxDecoration customDecorationBackground() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: startAlignment,
        end: endAlignment,
        colors: [
          fromColor,
          toColor,
        ],
      ),
    );
  }
}
