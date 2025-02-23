import 'package:digital_ghar/config/widgets/ContractorDashboardWidgets/contractor_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import '../../config/widgets/ContractorDashboardWidgets/contractor_dashboard_body_widget.dart';

class ContractorDashboardView extends StatelessWidget {
  const ContractorDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: ContractorAppBar(),
      body: ContractorDashboardBody(),
      floatingActionButton: ContractorFloatingActionButton(),
    );
  }
}

class ContractorFloatingActionButton extends StatelessWidget {
  const ContractorFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColor.blueColor,
      child: const Icon(IconlyBold.plus, color: AppColor.whiteColor),
      onPressed: () {
        // Add new project functionality
      },
    );
  }
}
