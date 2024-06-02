import 'package:flutter/material.dart';

final TextEditingController adController=TextEditingController();
final TextEditingController soyadController=TextEditingController();
final TextEditingController emailController=TextEditingController();
final TextEditingController mesajController=TextEditingController();

class TextformWidget extends StatelessWidget {
  final title;
  final hintText;
  final maxLines;
  final width;
  final controller;
  const TextformWidget({super.key,this.title,this.hintText,this.maxLines,this.width,this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text(title,style: TextStyle(fontSize: 16.0),),
        SizedBox(height: 5.0,),
        SizedBox(
          width: width,
          child: TextFormField(
            controller: controller,
            validator: (icerik){
              if(icerik.toString().isEmpty){
                return hintText;
              }
            },
            maxLines: maxLines,
            decoration: InputDecoration(
              fillColor: Colors.tealAccent.shade100,
              filled: true,
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),

              ),
            ),
          ),
        ),
      ],
    );
  }
}
