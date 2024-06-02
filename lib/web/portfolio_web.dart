import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/anasayfa_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/calismalarimiz_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/drawer_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/giris_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/hakkimizda_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_widget/Sekmeler.dart';
import 'package:flutter/material.dart';

import 'web_sayfalar/iletisim_web.dart';

class PortfolioWeb extends StatefulWidget {
  const PortfolioWeb({super.key});

  @override
  State<PortfolioWeb> createState() => _PortfolioWebState();
}

class _PortfolioWebState extends State<PortfolioWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWeb(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SekmelerListe(),
        actions: [
          IconButton(
            iconSize: 40,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GirisWeb()));
            },
            icon: Icon(Icons.login),
          ),
        ],
      ),
      body: ListView(
        children: [
          AnasayfaWeb(),
          HakkimizdaWeb(),
          CalismalarimizWeb(),
          IletisimWeb(),
        ],
      ),
    );
  }
}
