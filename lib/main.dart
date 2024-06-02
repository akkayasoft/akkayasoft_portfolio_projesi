import 'package:akkayasoft_portfolio_projesi/firebase_options.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/portfolio_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/rotalar.dart';
import 'package:akkayasoft_portfolio_projesi/web/portfolio_web.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'akkayasoft',
     onGenerateRoute: (settings)=>Rotalar.rotaOlustur(settings),
     initialRoute: '/',
   );
  }

}


/*
home: LayoutBuilder(
builder: (context,constraints){
if(constraints.maxWidth>800){
return PortfolioWeb();
}
else{
return PortfolioMobile();
}
},
),*/
