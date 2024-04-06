import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white70,
        fontSize: 30,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic,
        letterSpacing: 4,
        wordSpacing: 8,
        shadows: [
          Shadow(
            color: Colors.black38,
            offset: Offset(-5, 5),
            blurRadius: 10,
          )
        ],
      ),
    );
  }
}
