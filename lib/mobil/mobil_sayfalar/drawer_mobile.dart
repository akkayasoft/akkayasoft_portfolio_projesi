import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/blog_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../web/web_sayfalar/giris_web.dart';

class DrawerMobile extends StatefulWidget {
  const DrawerMobile({super.key});

  @override
  State<DrawerMobile> createState() => _DrawerMobileState();
}

class _DrawerMobileState extends State<DrawerMobile> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("akkayasoft",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 60.0,),
          Column(
            children: [
              SekmelerMobil(title: 'Anasayfa',rota: '/anasayfa',),
              SizedBox(height: 15.0,),
              SekmelerMobil(title: 'Hakkımızda',rota: '/hakkimizda',),
              SizedBox(height: 15.0,),
              SekmelerMobil(title: 'Çalışmalarımız',rota: 'calismalarimiz',),
              SizedBox(height: 15.0,),
              SekmelerMobil(title: 'Blog',rota: '/blog',),
              SizedBox(height: 15.0,),
              SekmelerMobil(title: 'İletişim',rota: '/iletisim',),
              SizedBox(height: 15.0,),
              IconButton(
                iconSize: 40,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GirisWeb()));
                },
                icon: Icon(Icons.login),
              ),
            ],
          ),
          SizedBox(height: 90.0,),
          CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/akkayasoft_logo.png"),
            ),
          ),
          SizedBox(height: 15.0,),

          SizedBox(height: 15.0,),
          Text("Yazılım Geliştirme ve Eğitim Platformu"),
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://www.instagram.com/akkaya_soft"));
                },
                icon: SvgPicture.asset("assets/instagram.svg",width: 35,color: Colors.black,),
              ),
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://www.github.com/akkayasoft"));
                },
                icon: SvgPicture.asset("assets/github.svg",width: 35,color: Colors.black,),
              ),
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://www.twitter.com/akkayasoft"));
                },
                icon: SvgPicture.asset("assets/twitter.svg",width: 35,color: Colors.black,),
              ),

            ],
          ),
          SizedBox(height: 30.0,),


        ],
      ),
    );
  }
}

class SekmelerMobil extends StatefulWidget {
  final title;
  final rota;
  const SekmelerMobil({super.key,this.title,this.rota});

  @override
  State<SekmelerMobil> createState() => _SekmelerMobilState();
}

class _SekmelerMobilState extends State<SekmelerMobil> {
  bool isSeciliMi=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>BlogMobile()));
        Navigator.of(context).pushNamed(widget.rota);
      },
      child: MouseRegion(
        onEnter: (_){
          setState(() {
            isSeciliMi=true;
          });
        },
        onExit: (_){
          setState(() {
            isSeciliMi=false;
          });
        },
        child: Card(
          shape: LinearBorder(

          ),

          color: Colors.tealAccent.shade100,
          elevation: 10.0,
          shadowColor: Colors.red,
          child: AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 100),
            curve: Curves.elasticIn,
            style: isSeciliMi
                ? GoogleFonts.roboto(
                shadows:[
                  Shadow(
                    color: Colors.black,
                    offset: Offset(0,-8),
                  ),
                ],
                backgroundColor:Colors.yellow,
                fontSize:35.0,
                color:Colors.transparent,
                //decoration:TextDecoration.underline,
                //decorationThickness:2,
                decorationColor:Colors.red)
                :GoogleFonts.roboto(
              color:Colors.black,fontSize:25.0,
            ),
            child: Text(widget.title),
          ),
        ),
      ),
    );
  }
}