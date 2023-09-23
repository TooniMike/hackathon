import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFont {
  static TextStyle customFontWhite(double fontSize) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
      ),
    );
  }
}

