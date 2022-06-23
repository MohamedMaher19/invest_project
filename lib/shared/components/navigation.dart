import 'package:flutter/material.dart';


void navigationTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));


void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (Route<dynamic> route) => false, // هنخلي الراوت ب false عشان نلغي ال فات
);