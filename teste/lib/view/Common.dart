import 'package:flutter/material.dart';

Text getMyText(String text, double size){
  return new Text(
    text,
    style: TextStyle(
      fontFamily: 'Annie Use Your Telescope',
      fontSize: size
    ),
  );
}
