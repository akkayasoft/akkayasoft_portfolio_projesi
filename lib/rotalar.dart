import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/anasayfa_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/blog_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/calismalarimiz_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/hakkimizda_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/mobil_sayfalar/iletisim_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/mobil/portfolio_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/web/portfolio_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/anasayfa_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/blog_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/calismalarimiz_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/hakkimizda_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/iletisim_web.dart';
import 'package:flutter/material.dart';

class Rotalar{
  static Route<dynamic>? rotaOlustur(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(
          settings: settings,
            builder:(_)=>LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth>800){
                return PortfolioWeb();
              }
              else{
                return PortfolioMobile();
              }
            })
        );
      case '/anasayfa':
        return MaterialPageRoute(
            settings: settings,
            builder:(_)=>LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth>800){
                return AnasayfaWeb();
              }
              else{
                return AnasayfaMobile();
              }
            })
        );
      case '/hakkimizda':
        return MaterialPageRoute(
            settings: settings,
            builder:(_)=>LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth>800){
                return HakkimizdaWeb();
              }
              else{
                return HakkimizdaMobile();
              }
            })
        );
      case '/calismalarimiz':
        return MaterialPageRoute(
            settings: settings,
            builder:(_)=>LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth>800){
                return CalismalarimizWeb();
              }
              else{
                return CalismalarimizMobile();
              }
            })
        );
      case '/blog':
        return MaterialPageRoute(
            settings: settings,
            builder:(_)=>LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth>800){
                return BlogWeb();
              }
              else{
                return BlogMobile();
              }
            })
        );
      case '/iletisim':
        return MaterialPageRoute(
            settings: settings,
            builder:(_)=>LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth>800){
                return IletisimWeb();
              }
              else{
                return IletisimMobile();
              }
            })
        );
      default:
        return MaterialPageRoute(
            settings: settings,
            builder:(_)=>LayoutBuilder(builder: (context,constraints){
              if(constraints.maxWidth>800){
                return PortfolioWeb();
              }
              else{
                return PortfolioMobile();
              }
            })
        );
    }
  }
}