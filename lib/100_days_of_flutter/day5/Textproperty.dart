import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle Mainheading(){
  return GoogleFonts.poppins(color: Colors.white,
  fontWeight: FontWeight.bold,fontSize: 45,letterSpacing: 1.0);
}


TextStyle subHeading(){
  return GoogleFonts.poppins(
  color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,
   );
}

TextStyle paragraph(){
  return  GoogleFonts.poppins(
   color: Colors.grey.shade500,fontSize: 15,height: 1.8,letterSpacing: 1.0
   );
}