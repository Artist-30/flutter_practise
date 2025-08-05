import 'package:flutter/material.dart';

TextStyle mTextStyle11() {
  return TextStyle(
    color: Colors.black,
    fontSize: 32,
  );
}

TextStyle mTextStyle21({FontWeight fw = FontWeight.bold, Color c = Colors.red}) {
  return TextStyle(
    fontSize: 42,
    color: c,
    fontWeight: fw,
  );
}
