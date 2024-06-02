
import 'package:akkayasoft_portfolio_projesi/mobil/portfolio_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_sayfalar/admin.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_widget/form_textForm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../portfolio_web.dart';

class GirisWeb extends StatefulWidget {
  const GirisWeb({super.key});

  @override
  State<GirisWeb> createState() => _GirisWebState();
}

class _GirisWebState extends State<GirisWeb> {
  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();
  final FirebaseAuth _auth=FirebaseAuth.instance;


  Future<void> _login() async{
    try{
      UserCredential userCredential=await _auth.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Giriş İşlemi Başarılı")));
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>AdminPanel()));

    }
    on FirebaseAuthException catch (e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hatalı kullanıcı adı veya şifre")));
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PortfolioWeb()));
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("AKKAYASOFT YÖNETİM PANELİ GİRİŞ SAYFASI"),
      ),

      body: Center(
        child: Container(
          width: 600,
          height: 600,
          child: Card(
            elevation: 5.0,
            shadowColor: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("akkayasoft_logo.png",width: 100,height: 100,),
                SizedBox(height: 30,),
                TextformWidget(title: "Email",hintText: "E mail adresini giriniz",width: 500,controller: _emailController,),
                TextformWidget(title: "Şifre",hintText: "Şifrenizi giriniz",width: 500,controller: _passwordController,),
                SizedBox(height: 40,),
                ElevatedButton(onPressed: _login, child: Text("Giriş Yap")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
