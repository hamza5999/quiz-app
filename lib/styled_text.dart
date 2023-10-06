import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // Used custom font named lato using GoogleFonts instead of TextStyle
      style: GoogleFonts.lato(
        color: const Color.fromARGB(255, 234, 219, 250),
        fontSize: 25,
      ),
    );
  }
}
