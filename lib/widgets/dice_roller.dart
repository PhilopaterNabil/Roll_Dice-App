import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:roll_dice/constants.dart';
import 'package:roll_dice/widgets/custom_image_dice.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int activeDice_1 = 1;
  int activeDice_2 = 1;
  int counter = 1;

  AudioPlayer player = AudioPlayer();
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 64),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageDice(activeDice: activeDice_1),
            CustomImageDice(activeDice: activeDice_2),
          ],
        ),
        const SizedBox(height: 64),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black54,
            foregroundColor: Colors.white,
            shadowColor: Colors.lightBlue,
          ),
          onPressed: onButtonClicked,
          label: const Text(
            'Go',
            style: TextStyle(fontSize: 32),
          ),
          icon: const Icon(Icons.touch_app, size: 32),
        ),
      ],
    );
  }

  void onButtonClicked() {
    player.setAsset('asset/audios/assets_audios_rolling-dice.mp3');
    player.play();

    Timer.periodic(kTranstionDuration, (timer) {
      counter++;
      setState(() {
        activeDice_1 = random.nextInt(6) + 1;
        activeDice_2 = random.nextInt(6) + 1;
      });

      if (counter == 20) {
        timer.cancel();
        setState(() {
          counter = 1;
        });
      }
    });
  }
}
