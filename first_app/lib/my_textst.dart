import 'package:flutter/material.dart';

class St_Text extends StatelessWidget{
  St_Text(this.text,{super.key });
  String text;
  @override
  Widget build(context)
  {
    return Text(text, style: const TextStyle(
        color: Colors.white,
        fontSize: 50
    ),);
  }
}