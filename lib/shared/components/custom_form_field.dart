import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField(
      {Key? key,
        required this.controller,
        required this.obsecure,
        required this.validator,
        required this.preficIcon,
        this.suffixIcon,
        required this.hintText,
        required this.fontSize, required this.textColor, required this.fontFamily, required this.type, })
      : super(key: key);

  final TextEditingController controller;
  final bool obsecure;
  final Function validator;
  final Widget preficIcon;
  Widget ? suffixIcon;
  final String hintText;
  final double fontSize;
  final Color textColor;
  final String  fontFamily;
  final TextInputType type;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.white
      ),
        controller: controller,
        obscureText: obsecure,
        cursorColor: Colors.white,
        cursorHeight: 20,
        keyboardType: TextInputType.text,
        validator: (value) => validator(value),
        decoration: InputDecoration(
          fillColor: Colors.grey.withOpacity(0.2),
          prefixIcon: preficIcon,
          suffixIcon: suffixIcon,

          hintText: hintText,

          hintStyle:  TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.normal,
            fontFamily: fontFamily
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}