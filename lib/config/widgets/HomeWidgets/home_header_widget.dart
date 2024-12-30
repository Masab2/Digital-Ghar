import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Let’s Find your",
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.024,
                    color: AppColor.greyColor,
                  ),
                ),
                Text(
                  "Favorite Home",
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.024,
                    color: AppColor.homeTextHeadingColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: context.mw * 0.14,
            width: context.mw * 0.14,
            decoration: BoxDecoration(
                color: AppColor.blueColor.withOpacity(0.45),
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                IconlyBold.filter,
              ),
            ),
          )
        ],
      ),
    );
  }
}
