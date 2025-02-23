import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ContractorAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ContractorAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.whiteColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Contractor',
        style: GoogleFonts.aBeeZee(
          color: Colors.black,
          fontSize: context.mh * 0.024,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(IconlyLight.notification, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: CircleAvatar(
            radius: context.mw * 0.04,
            backgroundColor: AppColor.blueColor.withOpacity(0.1),
            child: const Icon(IconlyBold.profile, color: AppColor.blueColor),
          ),
          onPressed: () {},
        ),
        SizedBox(width: context.mw * 0.02),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
