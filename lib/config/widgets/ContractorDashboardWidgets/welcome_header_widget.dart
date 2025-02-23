import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.mw * 0.04),
      decoration: BoxDecoration(
        color: AppColor.blueColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome back, John!',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.024,
                    fontWeight: FontWeight.bold,
                    color: AppColor.whiteColor,
                  ),
                ),
                SizedBox(height: context.mh * 0.01),
                Text(
                  'You have 3 tasks due today',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.016,
                    color: AppColor.whiteColor.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(context.mw * 0.03),
            decoration: BoxDecoration(
              color: AppColor.whiteColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              IconlyBold.work,
              color: AppColor.whiteColor,
              size: context.mw * 0.08,
            ),
          ),
        ],
      ),
    );
  }
}
