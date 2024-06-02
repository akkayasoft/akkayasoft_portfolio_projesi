import 'package:akkayasoft_portfolio_projesi/web/web_widget/form_textForm.dart';
import 'package:flutter/material.dart';

class IletisimMobile extends StatefulWidget {
  const IletisimMobile({super.key});

  @override
  State<IletisimMobile> createState() => _IletisimMobileState();
}

class _IletisimMobileState extends State<IletisimMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("Bize Ulaşın",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextformWidget(title: 'Adınız',hintText: 'Adınızı Giriniz',maxLines: 1,width: 400,controller: adController,),
                TextformWidget(title: 'Soyadınız',hintText: 'Soyadınızı Giriniz',maxLines: 1,width: 400,controller: soyadController,),
                TextformWidget(title: 'E Mail',hintText: 'E mail Adresinizi Giriniz',maxLines: 1,width: 400,controller: emailController,),
                TextformWidget(title: 'Mesaj',hintText: 'Mesajınızı Giriniz',maxLines: 5,width: 400,controller: mesajController,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text('Mesajı Gönder',

                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Text('Mesajı Temizle')),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
