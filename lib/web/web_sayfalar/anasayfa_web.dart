import 'package:flutter/material.dart';

import '../web_widget/anasayfa_profil.dart';

class AnasayfaWeb extends StatefulWidget {
  const AnasayfaWeb({super.key});

  @override
  State<AnasayfaWeb> createState() => _AnasayfaWebState();
}

class _AnasayfaWebState extends State<AnasayfaWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height-60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AnasayfaProfil(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color:Colors.pinkAccent.shade100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: TextWidget(text: 'Merhaba Ben',renk: Colors.white,font: 25.0,),
              ),
              SizedBox(height: 15,),
              Text("Ayhan Akkaya",style: TextStyle(fontSize: 45.0),),
              Text("Mobil & Web Developer",style: TextStyle(fontSize: 45.0),),
              SizedBox(height: 15.0,),
              HakkimizdaRow(ikon: Icon(Icons.email),bilgi: 'akkayasoft@gmail.com',),
              SizedBox(height: 15.0,),
              HakkimizdaRow(ikon: Icon(Icons.call), bilgi: '+90 414 347 00 00'),
              SizedBox(height: 15.0,),
              HakkimizdaRow(ikon: Icon(Icons.location_pin), bilgi: 'Şanlıurfa/Türkiye'),
            ],
          ),
        ],
      ),
    );
  }
}

// Profil Kısmı

// Temel Bilgilerin olduğu kısım
class HakkimizdaRow extends StatelessWidget {
  final Icon ikon;
  final String bilgi;
  const HakkimizdaRow({required this.ikon,required this.bilgi,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ikon,
        SizedBox(width: 20,),
        TextWidget(renk: Colors.black, text: bilgi, font: 20.0),
      ],
    );
  }
}

// Yazı Özellikleri

class TextWidget extends StatelessWidget {
  final double font;
  final String text;
  final Color renk;
  const TextWidget({required this.renk,required this.text,required this.font,super.key,});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: font,color: renk),);
  }
}
