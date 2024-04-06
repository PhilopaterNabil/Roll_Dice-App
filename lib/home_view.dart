import 'package:flutter/material.dart';
import 'package:roll_dice/constants.dart';
import 'package:roll_dice/widgets/gradient_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientContainer(
        fromColor: kFromColor,
        toColor: kToColor,
      ),
    );
  }
}
