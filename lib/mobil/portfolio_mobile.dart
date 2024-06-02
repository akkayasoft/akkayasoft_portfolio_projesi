import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/anasayfa_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/drawer_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/hakkimizda_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/calismalarimiz_web.dart';
import 'package:flutter/material.dart';

import 'mobil_sayfalar/calismalarimiz_mobile.dart';
import 'mobil_sayfalar/iletisim_mobile.dart';


class PortfolioMobile extends StatefulWidget{

  @override
  State<PortfolioMobile> createState() => _PortfolioMobileState();
}

class _PortfolioMobileState extends State<PortfolioMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: DrawerMobile(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0,color: Colors.black),
        ),
        body: ListView(
          children: [
           AnasayfaMobile(),
            SizedBox(height: 90.0,),
            HakkimizdaMobile(),
            SizedBox(height: 90.0,),
            CalismalarimizMobile(),
            SizedBox(height: 90.0,),
            IletisimMobile(),
            SizedBox(height: 90.0,),

          ],
        ),
      ),
    );
  }
}




/*CircleAvatar(
radius: 113.0,
backgroundColor: Colors.black,
child: CircleAvatar(
radius: 110.0,
backgroundColor: Colors.white,
backgroundImage: AssetImage("assets/ayhanakkaya.jpg"),
),
),
SizedBox(height: 60.0,),
Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.center,
children: [
Padding(
padding: const EdgeInsets.symmetric(horizontal: 20.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
decoration: BoxDecoration(
color: Colors.pinkAccent.shade100,
borderRadius: BorderRadius.only(
topLeft: Radius.circular(20.0),
topRight: Radius.circular(20.0),
bottomRight: Radius.circular(20.0),
),

),
padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
child: Text("Merhaba Ben", style: TextStyle(fontSize: 15.0),),
),
SizedBox(height: 15.0,),
Text("Ayhan Akkaya",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
SizedBox(height: 10.0,),
Text("Web & Mobil Developer",style: TextStyle(fontSize: 20.0),)
],
),

),

],
),
SizedBox(height: 15.0,),
Row(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Wrap(
direction: Axis.vertical,
spacing: 3.0,
children: [
Icon(Icons.email),
Icon(Icons.call),
Icon(Icons.location_pin),
],*//*

),
SizedBox(width: 40.0,),
Wrap(
direction: Axis.vertical,
spacing: 9.0,
children: [
Text("akkayasoft@gmail.com",style: TextStyle(fontSize: 15.0),),
Text("+90 0414 347 00 00",style: TextStyle(fontSize: 15.0),),
Text("Şanlıurfa/Türkiye",style: TextStyle(fontSize: 15.0),),

],
),
],
),
SizedBox(height: 90.0,),
HakkimizdaMobile(),*/
