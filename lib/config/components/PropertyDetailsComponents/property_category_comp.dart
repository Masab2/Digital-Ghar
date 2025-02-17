import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyCategory extends StatelessWidget {
  final String category;
  const PropertyCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Category: ',
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.018,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          category,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.018,
            color: AppColor.blueColor,
          ),
        ),
      ],
    );
  }
}
