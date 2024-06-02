import 'package:flutter/material.dart';

class CalismalarimizMobile extends StatefulWidget {
  const CalismalarimizMobile({super.key});

  @override
  State<CalismalarimizMobile> createState() => _CalismalarimizMobileState();
}

class _CalismalarimizMobileState extends State<CalismalarimizMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Çalışmalarımız",
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0,
        ),
        CardMobil(resimYolu: "assets/akkayasoft_logo.png",projeAdi: "Flutter Portfolio Projesi",),
        SizedBox(height: 20.0,),
        CardMobil(resimYolu: "assets/web.jpg",projeAdi: "Web Tasarım Projeleri",),
        SizedBox(height: 20.0,),
        CardMobil(resimYolu: "assets/siber.jpg",projeAdi: "Siber Güvenlik Projeleri",),

      ],
    );
  }
}

class CardMobil extends StatelessWidget {
  final String resimYolu;
  final projeAdi;
  const CardMobil({required this.resimYolu,this.projeAdi,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.blue.shade100),
      ),
      shadowColor: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              resimYolu,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              projeAdi,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
