import 'package:akkayasoft_portfolio_projesi/web/portfolio_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/anasayfa_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_widget/Sekmeler.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({super.key});

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SekmelerListe(),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("bloglar").snapshots(),
        builder: (context,snapshot){
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context,int index){
              DocumentSnapshot documentSnapshot=snapshot.data!.docs[index];
              return Card(
                color: Colors.tealAccent.shade100,
                elevation: 5.0,
                shadowColor: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("akkayasoft_logo.png",width: 50,height: 50,),
                          SizedBox(width: 30,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(documentSnapshot["title"],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Text(documentSnapshot["body"]),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

