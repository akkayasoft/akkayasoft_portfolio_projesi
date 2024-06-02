import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/blog_web.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sekmeler extends StatefulWidget {
  final title;
  final rota;
  const Sekmeler({super.key,this.title,this.rota});

  @override
  State<Sekmeler> createState() => _SekmelerState();
}

class _SekmelerState extends State<Sekmeler> {
  bool isSeciliMi=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(widget.rota);
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>BlogWeb()));
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
    );
  }
}

class SekmelerListe extends StatefulWidget {
  const SekmelerListe({super.key});

  @override
  State<SekmelerListe> createState() => _SekmelerListeState();
}

class _SekmelerListeState extends State<SekmelerListe> {
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(flex: 3,),
        Sekmeler(title: "Anasayfa",rota: '/anasayfa',),
        Spacer(),
        Sekmeler(title: "Hakkımızda",rota: '/hakkimizda',),
        Spacer(),
        Sekmeler(title: "Çalışmalarımız",rota: '/calismalarimiz',),
        Spacer(),
        Sekmeler(title: "Blog",rota: '/blog',),
        Spacer(),
        Sekmeler(title: "İletişim",rota: '/iletisim',),
        Spacer(),
      ],
    );
  }
}