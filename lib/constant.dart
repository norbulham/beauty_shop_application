import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


myStyle(double fs, [Color ?clr, FontWeight ?fw]){
  return GoogleFonts.oleoScript(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}

Color primaryColor = Color(0xff3c6e71);
Color secondaryColor = Color(0xffdee2e6);

String myparagragh ="Wu Lien-teh greatly improved on the designs he had seen in Europe to develop a face mask of layers of gauze and cotton that would protect both the wearer and others.";