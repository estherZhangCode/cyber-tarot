import 'package:flutter/material.dart';

class TarotTheme {
  // Primary & Neutral Colors
  static const black = Color.fromARGB(255, 0, 0, 0);
  static const white = Color.fromARGB(255, 255, 255, 255);
  static final transparentBlack = black.withOpacity(0.9);

  // Text Colors
  static const textGrey = Color.fromARGB(128, 245, 245, 245);
  static const textPrimary = TarotTheme.black;


  // Main Colors
  static const yellow = Color.fromARGB(255, 224, 238, 74);
  static const yellowLight = Color.fromARGB(255, 190, 205, 122);
  static const purple = Color.fromARGB(255, 148, 139, 255);
  static const blue = Color.fromARGB(255, 215, 240, 255);


  // Space
  static const double spacing2 = 2;
  static const double spacing4 = 4;
  static const double spacing8 = 8;
  static const double spacing10 = 10;
  static const double spacing12 = 12;
  static const double spacing16 = 16;
  static const double spacing20 = 20;
  static const double spacing24 = 24;
  static const double spacing32 = 32;
  static const double spacing36 = 36;
  static const double spacing48 = 48;
  static const double spacing64 = 64;

  static const Duration milliseconds100 = Duration(milliseconds: 100);
}
