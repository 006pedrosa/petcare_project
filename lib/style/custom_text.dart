import 'package:flutter/material.dart';

custom_text(String text) {
  return Text(
    text,
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 30,
      fontStyle: FontStyle.italic,
      letterSpacing: 3,
    ),
  );
}
