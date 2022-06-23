import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
  TextUtils({Key? key, required this.text, required this.fontSize,required this.fontFamily, required this.fontWeight, required this.color}) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String  fontFamily;



  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(

      fontSize: fontSize,
      fontFamily:fontFamily ,
      color:color,
      fontWeight: fontWeight,
    ),);
  }
}