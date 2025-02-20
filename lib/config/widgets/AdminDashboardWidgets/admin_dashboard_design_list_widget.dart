import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class DesignsList extends StatelessWidget {
  const DesignsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.withOpacity(0.2),
          height: 1,
        ),
        itemBuilder: (context, index) => DesignListItem(index: index),
      ),
    );
  }
}

class DesignListItem extends StatelessWidget {
  final int index;

  const DesignListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(context.mw * 0.02),
        decoration: BoxDecoration(
          color: AppColor.blueColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          IconlyBold.document,
          color: AppColor.blueColor,
          size: context.mw * 0.05,
        ),
      ),
      title: Text(
        'Modern House Design ${index + 1}',
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.016,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        'Approved on Feb 21, 2024',
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.014,
          color: AppColor.greyColor,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(IconlyLight.download),
        onPressed: () {},
      ),
    );
  }
}
