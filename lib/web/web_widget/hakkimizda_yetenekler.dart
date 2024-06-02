import 'package:flutter/material.dart';

import 'hakkimizda_text.dart';

class HakkimizdaYetenekler extends StatelessWidget {
  final yetenek;
  const HakkimizdaYetenekler({required this.yetenek,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red.shade400,
            style: BorderStyle.solid,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(7.0),
        child: HakkimizdaText(text: yetenek,boyut: 20.0,stil: FontWeight.bold,),
      ),
    );
  }
}