import 'package:flutter/material.dart';


Widget defaultTextBottom({
  required onPressed,
  required String? text,
  required final double fontSize,
  required final String  fontFamily,
  required final Color textColor,




}) =>
    TextButton(
      onPressed: onPressed,
      child: Text(
        text!.toUpperCase(),
        style: TextStyle(
            color: textColor,fontSize: fontSize , fontFamily: fontFamily),
      ),
    );