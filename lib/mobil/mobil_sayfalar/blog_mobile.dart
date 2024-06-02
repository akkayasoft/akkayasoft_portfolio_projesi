import 'package:flutter/material.dart';

import 'drawer_mobile.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        endDrawer: DrawerMobile(),
    //extendBodyBehindAppBar: true,
    appBar: AppBar(
      automaticallyImplyLeading: false,
      title: Text("Blog Sayfası"),
    backgroundColor: Colors.yellow.shade200,
    centerTitle: true,
    elevation: 0.0,
    iconTheme: IconThemeData(size: 35.0,color: Colors.black),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("akkayasoft Blog sayfasına hoşgeldiniz.İçerikler dinamik olarak firebase ile yüklenecektir."),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Anasayfaya Dön"))
        ],
      ),
    ),

        ),);
  }
}
