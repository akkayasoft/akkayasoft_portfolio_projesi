import 'package:flutter/material.dart';

class HakkimizdaText extends StatelessWidget {
  final text;
  final double boyut;
  final FontWeight stil;
  const HakkimizdaText({
    required this.text,
    required this.boyut,
    required this.stil,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: boyut,
        fontWeight: stil,
      ),
    );
  }
}
