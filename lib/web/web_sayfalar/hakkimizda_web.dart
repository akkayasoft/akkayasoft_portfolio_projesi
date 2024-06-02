import 'package:akkayasoft_portfolio_projesi/web/web_widget/hakkimizda_yetenekler.dart';
import 'package:flutter/material.dart';

import '../web_widget/hakkimizda_text.dart';

class HakkimizdaWeb extends StatefulWidget {
  const HakkimizdaWeb({super.key});

  @override
  State<HakkimizdaWeb> createState() => _HakkimizdaWebState();
}

class _HakkimizdaWebState extends State<HakkimizdaWeb> {

  @override
  Widget build(BuildContext context) {
    final ekranBoyutu=MediaQuery.of(context).size.height;
    return Container(
      color: Colors.transparent,
      height: ekranBoyutu/1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HakkimizdaText(text: "Hakkımızda", boyut: 55.0, stil: FontWeight.bold),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/akkayasoft_logo.png',height: 400,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HakkimizdaText(text: "Akkayasoft Nedir?",boyut: 40.0,stil: FontWeight.bold,),
                  SizedBox(height: 10.0,),
                  HakkimizdaText(text: "akkayasoft yazılım geliştirme platformu olarak 2024 yılında oluşturulmuştur.", boyut: 20.0, stil: FontWeight.normal),
                  HakkimizdaText(text: "Amacımız insanların özellikle de gençlerin yazılımı daha disiplinli bir şekilde dinamik olarak ", boyut: 20.0, stil: FontWeight.normal),
                  HakkimizdaText(text: "öğrenmelerini sağlamaktır.Bu amaçla güncel yazılım alanlarında eğitim içerikleri oluşturulmaya başlanmıştır..", boyut: 20.0, stil: FontWeight.normal),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HakkimizdaYetenekler(yetenek: 'Flutter',),
                      HakkimizdaYetenekler(yetenek: 'Web',),
                      HakkimizdaYetenekler(yetenek: 'Android'),
                      HakkimizdaYetenekler(yetenek: 'IOS'),
                      HakkimizdaYetenekler(yetenek: 'Siber'),
                      HakkimizdaYetenekler(yetenek: 'Desktop'),
                      HakkimizdaYetenekler(yetenek: 'Prompt'),
                      HakkimizdaYetenekler(yetenek: 'Yapay Zeka')
                    ],
                  ),





                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}




