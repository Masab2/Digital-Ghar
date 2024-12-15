import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundBtn extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const RoundBtn({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: context.mh * 0.06,
      minWidth: context.mw * 0.75,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      color: AppColor.blueColor,
      onPressed: onTap,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: context.mh * 0.020,
          color: Colors.white,
        ),
      ),
    );
  }
}
