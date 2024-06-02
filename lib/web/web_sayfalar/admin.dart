import 'package:akkayasoft_portfolio_projesi/mobil/portfolio_mobile.dart';
import 'package:akkayasoft_portfolio_projesi/web/portfolio_web.dart';
import 'package:akkayasoft_portfolio_projesi/web/web_widget/form_textForm.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        title: Text("Blog Panel İşlemleri"),
        actions: [
          TextButton(onPressed: (){
            FirebaseAuth.instance.signOut();
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
              return LayoutBuilder(builder: (context,constraints){
                if(constraints.maxWidth>800){
                  return PortfolioWeb();
                }
                else{
                  return PortfolioMobile();
                }
              });
            }));

          }, child: Text("Çıkış Yap")),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextformWidget(
              title: "Başlık",
              hintText: "Konu başlığını giriniz",
              controller: titleController,
            ),
            TextformWidget(
              title: "İçerik",
              hintText: "İçeriği giriniz",
              maxLines: 5,
              controller: bodyController,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseFirestore.instance.collection('bloglar').add({
                  'title': titleController.text,
                  'body': bodyController.text
                });
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Kaydetme İşlemi Başarılı")));
              },
              child: Text("Kaydet"),
            ),
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('bloglar').snapshots(),
                builder: (context,snapshot){
                  if(!snapshot.hasData) return CircularProgressIndicator();
                  var docs=snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: docs.length,
                    itemBuilder: (context,index){
                      var data=docs[index].data() as Map<String,dynamic>;
                      return Card(
                        color: Colors.tealAccent.shade100,
                        elevation: 5.0,
                        shadowColor: Colors.red,
                        child: ListTile(
                          title: Text(data['title'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          subtitle: Text(data['body']),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: (){
                                titleController.text=data['title'];
                                bodyController.text=data['body'];
                              }, icon: Icon(Icons.edit)),
                              IconButton(onPressed: (){
                                FirebaseFirestore.instance.collection('bloglar').doc(docs[index].id).delete();
                              },
                                  icon: Icon(Icons.delete)),
                              IconButton(onPressed: () async {
                                await FirebaseFirestore.instance.collection('bloglar').doc(docs[index].id).update(
                                    {
                                      'title':titleController.text,
                                      'body':bodyController.text
                                    });
                              },
                                  icon: Icon(Icons.update)),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
