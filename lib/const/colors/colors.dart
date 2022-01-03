import 'package:flutter/material.dart';

Color gradlLigtColor = const Color(0xffFF5B55);
Color gradDarkColor = const Color(0xffFF1161);
Color mainColor = const Color(0xffFF4059);
Gradient? gradient = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.topRight,
  colors: [
    Color(0xffFF5B55),
    Color(0xffFF1161),
  ],
);
Gradient? gradient2 = const LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [
    Color(0xffFF5B55),
    Color(0xffFF1161),
  ],
);
Decoration decoration = const BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(25),
    topLeft: Radius.circular(25),
  ),
);
