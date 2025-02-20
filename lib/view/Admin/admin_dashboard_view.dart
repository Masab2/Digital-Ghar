import 'package:digital_ghar/config/widgets/AdminDashboardWidgets/admin_dash_board_body_widget.dart';
import 'package:digital_ghar/config/widgets/AdminDashboardWidgets/admin_dashboard_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';

class AdminDashboardView extends StatelessWidget {
  const AdminDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AdminAppBar(),
      body: AdminDashboardBody(),
      floatingActionButton: AdminFloatingActionButton(),
    );
  }
}

class AdminFloatingActionButton extends StatelessWidget {
  const AdminFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColor.blueColor,
      child: const Icon(IconlyBold.plus, color: AppColor.whiteColor),
      onPressed: () {},
    );
  }
}
