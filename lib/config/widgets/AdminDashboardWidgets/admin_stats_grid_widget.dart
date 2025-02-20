import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'admin_stats_card_widget.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({super.key});

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
          title: 'Total Properties',
          value: '156',
          icon: IconlyBold.home,
          color: AppColor.blueColor,
        ),
        StatCard(
          title: 'Active Contractors',
          value: '45',
          icon: IconlyBold.work,
          color: Colors.green,
        ),
        StatCard(
          title: 'Pending Approvals',
          value: '12',
          icon: IconlyBold.tick_square,
          color: Colors.orange,
        ),
        StatCard(
          title: 'Total Revenue',
          value: '1.2M',
          icon: IconlyBold.wallet,
          color: Colors.purple,
        ),
      ],
    );
  }
}
