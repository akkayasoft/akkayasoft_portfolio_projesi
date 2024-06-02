import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWeb extends StatefulWidget {
  const DrawerWeb({super.key});

  @override
  State<DrawerWeb> createState() => _DrawerWebState();
}

class _DrawerWebState extends State<DrawerWeb> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          Text("akkayasoft",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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

        ],
      ),
    );
  }
}
