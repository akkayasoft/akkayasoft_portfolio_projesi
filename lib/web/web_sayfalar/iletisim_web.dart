import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../web_widget/form_textForm.dart';

class IletisimWeb extends StatefulWidget {
  const IletisimWeb({super.key});

  @override
  State<IletisimWeb> createState() => _IletisimWebState();
}

class _IletisimWebState extends State<IletisimWeb> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final formGenislik=900;
    return Container(
      height: MediaQuery.of(context).size.height/1.3,
      child: Column(
        children: [
          Text("Bize Ulaşın",style: TextStyle(fontSize: 55.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 30.0,),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextformWidget(title: 'Adınız',hintText: 'Adınızı Giriniz',width: formGenislik,controller: adController,),
                TextformWidget(title: 'Soyadınız',hintText: 'Soyadınızı Giriniz',width: formGenislik,controller: soyadController,),
                TextformWidget(title: 'E mail',hintText: 'E mail adresinizi Giriniz',width: formGenislik,controller: emailController,),
                TextformWidget(title: 'Mesajınız',hintText: 'Mesajını Giriniz',maxLines: 5,width: formGenislik,controller: mesajController,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.tealAccent.shade100,
                          foregroundColor: Colors.black,

                        ),
                          onPressed: () async {

                          final addData=new AddDataFirestore();
                          if(formKey.currentState!.validate()){
                            if(await addData.addResponse(
                                adController.text,
                                soyadController.text,
                                emailController.text,
                                mesajController.text)){
                              formKey.currentState!.reset();
                              print("Mesaj Başarıyla Gönderildi");
                            }else{
                              print("Mesaj Gönderilemedi");
                            };
                          }

                          },
                          child: Text('Mesajı Gönder')),
                    ),

                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddDataFirestore{

  CollectionReference response=FirebaseFirestore.instance.collection("iletisim");

  Future addResponse(final ad,final soyad,final email,final mesaj) async{
    return response.add({
      'ad':ad,
      'soyad':soyad,
      'email':email,
      'mesaj':mesaj
    }).then((value){
      print("Kayıt Başarılı");
      return true;
    }).catchError((error){
      print("Kayıt yapılamadı");
      return false;
    });

  }

}















