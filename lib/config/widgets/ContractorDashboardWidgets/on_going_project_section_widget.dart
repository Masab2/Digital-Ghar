import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class OngoingProjectsSection extends StatelessWidget {
  const OngoingProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ongoing Projects',
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
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          separatorBuilder: (context, index) =>
              SizedBox(height: context.mh * 0.02),
          itemBuilder: (context, index) => ProjectCard(index: index),
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final int index;

  const ProjectCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(context.mw * 0.04),
            child: Row(
              children: [
                Container(
                  width: context.mw * 0.15,
                  height: context.mw * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: NetworkImage('https://via.placeholder.com/100'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: context.mw * 0.03),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Modern Villa Project ${index + 1}',
                        style: GoogleFonts.aBeeZee(
                          fontSize: context.mh * 0.018,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: context.mh * 0.005),
                      Text(
                        'Bhopal, MP',
                        style: GoogleFonts.aBeeZee(
                          fontSize: context.mh * 0.014,
                          color: AppColor.greyColor,
                        ),
                      ),
                      SizedBox(height: context.mh * 0.01),
                      LinearProgressIndicator(
                        value: (index + 1) * 0.25,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColor.blueColor),
                      ),
                      SizedBox(height: context.mh * 0.005),
                      Text(
                        '${((index + 1) * 25)}% Complete',
                        style: GoogleFonts.aBeeZee(
                          fontSize: context.mh * 0.012,
                          color: AppColor.blueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.mw * 0.04,
              vertical: context.mh * 0.01,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.05),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Due: Feb 28, 2024',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.014,
                    color: AppColor.greyColor,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      IconlyBold.user_3,
                      color: AppColor.blueColor,
                      size: context.mw * 0.04,
                    ),
                    SizedBox(width: context.mw * 0.01),
                    Text(
                      '${3 + index} Members',
                      style: GoogleFonts.aBeeZee(
                        fontSize: context.mh * 0.014,
                        color: AppColor.blueColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
