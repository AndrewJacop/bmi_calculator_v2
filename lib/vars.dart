import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor mycolorpalette =
    MaterialColor(_mycolorpalettePrimaryValue, <int, Color>{
  50: Color(0xFFFFFFFF),
  100: Color(0xFF737583),
  200: Color(0xFF5D5E6E),
  300: Color(0xFF323244),
  400: Color(0xFF24263B),
  500: Color(_mycolorpalettePrimaryValue),
  600: Color(0xFF1A1D30),
  700: Color(0xFF151829),
  800: Color(0xFF111422),
  900: Color(0xFF0A0B16),
});
const int _mycolorpalettePrimaryValue = 0xFF1D2136;

const MaterialColor mycolorpaletteAccent =
    MaterialColor(_mycolorpaletteAccentValue, <int, Color>{
  100: Color(0xFFE83D66),
  200: Color(_mycolorpaletteAccentValue),
  400: Color(0xFF001EF1),
  700: Color(0xFF001BD8),
});
const int _mycolorpaletteAccentValue = 0xFF398C39;

var txtStyle1 = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF737583));
var txtStyle2 = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white));

myBoxDecoration(n) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(20), color: mycolorpalette[n]);
}
