import 'package:flutter/material.dart';

class AnasayfaMobile extends StatefulWidget {
  const AnasayfaMobile({super.key});

  @override
  State<AnasayfaMobile> createState() => _AnasayfaMobileState();
}

class _AnasayfaMobileState extends State<AnasayfaMobile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 117.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 113.0,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/ayhanakkaya.jpg"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0))),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text("Merhaba Ben", style: TextStyle(fontSize: 15.0),),
                    ),
                    Text("Ayhan Akkaya", style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                    Text("Web & Mobile Developer", style: TextStyle(fontSize: 20.0),),
                  ],
                ),
                SizedBox(height: 25.0),
                Card(
                  elevation: 5.0,
                  shadowColor: Colors.red,
                  child: Row(
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
                        ],
                      ),
                      SizedBox(width: 40.0),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: [
                          Text("akkayasoft@gmail.com", style: TextStyle(fontSize: 15.0),),
                          Text("+90 414 347 00 00", style: TextStyle(fontSize: 15.0),),
                          Text("Şanlıurfa/Türkiye", style: TextStyle(fontSize: 15.0),),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
