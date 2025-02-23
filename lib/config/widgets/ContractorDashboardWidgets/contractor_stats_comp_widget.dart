import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class StatsOverview extends StatelessWidget {
  const StatsOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: context.mh * 0.02,
      crossAxisSpacing: context.mw * 0.04,
      childAspectRatio: 1.5,
      children: const [
        StatCard(
          title: 'Active Projects',
          value: '08',
          icon: IconlyBold.work,
          color: Colors.orange,
        ),
        StatCard(
          title: 'Team Members',
          value: '24',
          icon: IconlyBold.user_3,
          color: Colors.green,
        ),
        StatCard(
          title: 'Completed',
          value: '143',
          icon: IconlyBold.tick_square,
          color: AppColor.blueColor,
        ),
        StatCard(
          title: 'Revenue',
          value: '₹2.4M',
          icon: IconlyBold.wallet,
          color: Colors.purple,
        ),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.mw * 0.04),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: color, size: context.mh * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: GoogleFonts.aBeeZee(
                  fontSize: context.mh * 0.024,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              Text(
                title,
                style: GoogleFonts.aBeeZee(
                  fontSize: context.mh * 0.014,
                  color: AppColor.greyColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
