import 'package:flutter/material.dart';

class CalismalarimizWeb extends StatefulWidget {
  const CalismalarimizWeb({super.key});

  @override
  State<CalismalarimizWeb> createState() => _CalismalarimizWebState();
}

class _CalismalarimizWebState extends State<CalismalarimizWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.3,
      child: Column(
        children: [
          Text(
            'Çalışmalarımız',
            style: TextStyle(
              fontSize: 55.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 30.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue.shade100),
                  ),
                  shadowColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset("assets/akkayasoft_logo.png",width: 300,height: 300,fit: BoxFit.cover,),
                        SizedBox(height: 10,),
                        Text("Flutter Mobil Projeleri",style: TextStyle(fontSize: 20.0),),

                      ],
                    ),
                  )),
              Card(
                  elevation: 30.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue.shade100),
                  ),
                  shadowColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset("assets/web.jpg",width: 300,height: 300,fit: BoxFit.cover,),
                        SizedBox(height: 10,),
                        Text("ASP.NET Core Projeleri",style: TextStyle(fontSize: 20.0),),

                      ],
                    ),
                  )),
              Card(
                  elevation: 30.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Colors.blue.shade100),
                  ),
                  shadowColor: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset("assets/siber.jpg",width: 300,height: 300,fit: BoxFit.cover,),
                        SizedBox(height: 10,),
                        Text("Siber Güvenlik Projeleri",style: TextStyle(fontSize: 20.0),),

                      ],
                    ),
                  )),
            ],
          ),


        ],
      ),
    );
  }
}
