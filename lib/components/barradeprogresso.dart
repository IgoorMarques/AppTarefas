import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final int currentLvl;
  const ProgressBar(this.currentLvl, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(
          children: [
            Container(
              width: 280,
              height: 5,
              color: Colors.grey[300],
            ),
            Container(
              width: currentLvl <= 30 ? 280 / 30 * currentLvl : 280,
              height: 5,
              color: Colors.white,
            )
          ],
        ),
        Text(
          "Nível: ${currentLvl <= 30 ? currentLvl : 30}",
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}