import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.aBeeZee(
        fontSize: context.mh * 0.022,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}
