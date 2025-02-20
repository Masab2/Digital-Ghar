import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/widgets/AdminDashboardWidgets/admin_dashboard_search_widget.dart'
    as search;
import 'package:flutter/material.dart';

import 'admin_dashboard_design_list_widget.dart';
import 'admin_property_list_widget.dart';
import 'admin_stats_grid_widget.dart';
import 'contractor_list_widget.dart';
import 'section_tile_widget.dart';

class AdminDashboardBody extends StatelessWidget {
  const AdminDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.05,
          vertical: context.mh * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const search.SearchBar(),
            0.02.ph(context),
            const StatsGrid(),
            0.03.ph(context),
            const SectionTitle(title: 'Recent Properties'),
            0.02.ph(context),
            const PropertyList(),
            0.03.ph(context),
            const SectionTitle(title: 'Active Contractors'),
            0.02.ph(context),
            const ContractorsList(),
            0.03.ph(context),
            const SectionTitle(title: 'LAD Approved Designs'),
            0.02.ph(context),
            const DesignsList(),
          ],
        ),
      ),
    );
  }
}
