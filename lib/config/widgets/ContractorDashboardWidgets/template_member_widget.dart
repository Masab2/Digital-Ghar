import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class TeamMembersSection extends StatelessWidget {
  const TeamMembersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Team Members',
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.022,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: GoogleFonts.aBeeZee(
                  color: AppColor.blueColor,
                  fontSize: context.mh * 0.016,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: context.mh * 0.02),
        SizedBox(
          height: context.mh * 0.12,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, index) =>
                SizedBox(width: context.mw * 0.03),
            itemBuilder: (context, index) => TeamMemberCard(index: index),
          ),
        ),
      ],
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final int index;

  const TeamMemberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mw * 0.35,
      padding: EdgeInsets.all(context.mw * 0.03),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: context.mw * 0.05,
            backgroundColor: AppColor.blueColor.withOpacity(0.1),
            child: Icon(
              IconlyBold.profile,
              color: AppColor.blueColor,
              size: context.mw * 0.05,
            ),
          ),
          SizedBox(width: context.mw * 0.02),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Member ${index + 1}',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.016,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Engineer',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.012,
                    color: AppColor.greyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
