import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appstyle {
  static Color bgcolor = Color(0xFFe2e2ff);
  static Color maincolor = Color(0xFF000063);
  static Color accentcolor = Color(0xFF0065FF);

// cards diffrent colrs

  static List<Color> cardscolor = [
    Colors.grey,
    Colors.red.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.blueGrey.shade100
  ];

  //textstyle

  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold);

  static TextStyle mainContent =
      GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.normal);

  static TextStyle datetitle =
      GoogleFonts.roboto(fontSize: 13, fontWeight: FontWeight.w500);
}
