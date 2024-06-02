import 'package:akkayasoft_portfolio_projesi/web/web_widget/hakkimizda_text.dart';
import 'package:flutter/material.dart';

import '../../web/web_widget/hakkimizda_yetenekler.dart';

class HakkimizdaMobile extends StatefulWidget {
  const HakkimizdaMobile({super.key});

  @override
  State<HakkimizdaMobile> createState() => _HakkimizdaMobileState();
}

class _HakkimizdaMobileState extends State<HakkimizdaMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HakkimizdaText(text: "Akkayasoft Nedir?", boyut: 30.0, stil: FontWeight.bold),
          HakkimizdaText(text: "Amacımız insanların özellikle de gençlerin yazılımı daha disiplinli bir şekilde dinamik olarak öğrenmelerini sağlamaktır.Bu amaçla güncel yazılım alanlarında eğitim içerikleri oluşturulmaya başlanmıştır..", boyut: 18.0, stil: FontWeight.normal),
          SizedBox(height: 30.0,),
          HakkimizdaText(text: "Çalışma Alanlarımız", boyut: 30.0, stil: FontWeight.bold),
          SizedBox(height: 10.0,),
          Wrap(
            spacing: 7.0,
            runSpacing: 7.0,
            children: [
              HakkimizdaYetenekler(yetenek: "Flutter",),
              HakkimizdaYetenekler(yetenek: "Web",),
              HakkimizdaYetenekler(yetenek: "Android",),
              HakkimizdaYetenekler(yetenek: "IOS",),
              HakkimizdaYetenekler(yetenek: "Siber",),
              HakkimizdaYetenekler(yetenek: "Desktop",),
              HakkimizdaYetenekler(yetenek: "Prompt",),
              HakkimizdaYetenekler(yetenek: "Yapay Zeka",),
            ],
          ),


        ],
      ),
    );
  }
}
