import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ContractorsList extends StatelessWidget {
  const ContractorsList({super.key});

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
        itemBuilder: (context, index) => ContractorListItem(index: index),
      ),
    );
  }
}

class ContractorListItem extends StatelessWidget {
  final int index;

  const ContractorListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: context.mw * 0.05,
        backgroundColor: AppColor.blueColor.withOpacity(0.1),
        child: Icon(
          IconlyBold.profile,
          color: AppColor.blueColor,
          size: context.mw * 0.05,
        ),
      ),
      title: Text(
        'John Doe ${index + 1}',
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.016,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        'Interior Designer',
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.014,
          color: AppColor.greyColor,
        ),
      ),
      trailing: const StatusBadge(text: 'Active'),
    );
  }
}

class StatusBadge extends StatelessWidget {
  final String text;

  const StatusBadge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.mw * 0.02,
        vertical: context.mh * 0.005,
      ),
      decoration: BoxDecoration(
        color: AppColor.blueColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: GoogleFonts.aBeeZee(
          color: AppColor.blueColor,
          fontSize: context.mh * 0.014,
        ),
      ),
    );
  }
}
