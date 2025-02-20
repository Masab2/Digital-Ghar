import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class HomeAppBarWidget {
  static PreferredSizeWidget homeBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.024,
            fontWeight: FontWeight.bold,
          ),
          children: const [
            TextSpan(
              text: "Digital ",
              style: TextStyle(color: AppColor.blueColor),
            ),
            TextSpan(
              text: "Ghar",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      leading: IconButton(
        icon: const Icon(IconlyBold.arrow_left),
        onPressed: () {
          //  Navigator.pop(context);
          //     SystemNavigator.pop();
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(IconlyLight.notification),
          onPressed: () {},
        ),
      ],
    );
  }
}
