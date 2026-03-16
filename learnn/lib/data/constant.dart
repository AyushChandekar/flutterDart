import 'package:flutter/material.dart';

class KConstants {
  static const String themeModeKey = "themeModeKey";
}

class KTextStyle {
  static const TextStyle boldRedTitle = TextStyle(
    color: Colors.red,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 2.0,
  );
  static const TextStyle descriptionText = TextStyle(
    color: Color.fromARGB(169, 79, 76, 76),
    fontSize: 16.0,
    fontWeight: FontWeight.w100,
    letterSpacing: 1.0,
  );
}
