import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';

import 'contractor_stats_comp_widget.dart';
import 'on_going_project_section_widget.dart';
import 'template_member_widget.dart';
import 'welcome_header_widget.dart';

class ContractorDashboardBody extends StatelessWidget {
  const ContractorDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(context.mw * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeHeader(),
            SizedBox(height: context.mh * 0.02),
            const StatsOverview(),
            SizedBox(height: context.mh * 0.03),
            const OngoingProjectsSection(),
            SizedBox(height: context.mh * 0.03),
            const TeamMembersSection(),
          ],
        ),
      ),
    );
  }
}
