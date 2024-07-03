import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle titleStyle = TextStyle(
      fontFamily: GoogleFonts.sora().fontFamily,
      fontSize: 25,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
      letterSpacing: 0.6);

  static TextStyle subtitleStyle = TextStyle(
      fontFamily: GoogleFonts.sora().fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.grey[500],
      letterSpacing: 0.6);

  static TextStyle smallText = TextStyle(
      fontFamily: GoogleFonts.sora().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
      letterSpacing: 0.4);

  static TextStyle blueSmallText = TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: Colors.blue[800],
      fontFamily: GoogleFonts.sora().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.blue[800],
      letterSpacing: 0.4);

  static TextStyle blueText = TextStyle(
      decoration: TextDecoration.underline,
      decorationColor: Colors.blue[800],
      fontFamily: GoogleFonts.sora().fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.blue[800],
      letterSpacing: 0.4);

  static ButtonStyle textButtonStyle = ButtonStyle(
      splashFactory: NoSplash.splashFactory,
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
      animationDuration: const Duration(milliseconds: 400),
      foregroundColor: const MaterialStatePropertyAll(Colors.black87),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));

  static ButtonStyle elevatedButtonStyle = ButtonStyle(
      splashFactory: NoSplash.splashFactory,
      overlayColor: const MaterialStatePropertyAll(Colors.black),
      animationDuration: const Duration(milliseconds: 400),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
}
