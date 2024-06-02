import 'package:flutter/material.dart';

class AnasayfaProfil extends StatelessWidget {
  const AnasayfaProfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 147.0,
      backgroundColor: Colors.blueAccent,
      child: CircleAvatar(
        radius: 143.0,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: 140.0,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage("assets/ayhanakkaya.jpg"),
        ),
      ),
    );
  }
}