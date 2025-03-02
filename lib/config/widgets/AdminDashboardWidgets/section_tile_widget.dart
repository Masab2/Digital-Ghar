import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.aBeeZee(
              fontSize: context.mh * 0.020,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            "View All",
            style: GoogleFonts.aBeeZee(
              fontSize: context.mh * 0.016,
              fontWeight: FontWeight.w500,
              color: AppColor.blueColor,
            ),
          ),
        ],
      ),
    );
  }
}
