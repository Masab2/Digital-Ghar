import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/utils/custom_date_time_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class StatsSectionWidget extends StatelessWidget {
  final ContractorProfileModelData data;
  const StatsSectionWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.mw * 0.04,
        vertical: context.mh * 0.02,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
            context,
            title: "Projects",
            value: data.projectsCompleted.toString(),
            iconData: IconlyBold.work,
            iconColor: const Color(0xFF4F80FF),
          ),
          _buildDivider(context),
          _buildStatItem(
            context,
            title: "Experience",
            value: CustomDateTimeUtil.calculateExperience(data.createdAt),
            iconData: IconlyBold.time_circle,
            iconColor: const Color(0xFFED8936),
          ),
          _buildDivider(context),
          _buildStatItem(
            context,
            title: "Status",
            value: data.isActive ? "Active" : "Inactive",
            iconData: IconlyBold.tick_square,
            iconColor: data.isActive
                ? const Color(0xFF38B2AC)
                : const Color(0xFFE53E3E),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context, {
    required String title,
    required String value,
    required IconData iconData,
    required Color iconColor,
  }) {
    return Column(
      children: [
        Container(
          height: context.mh * 0.05,
          width: context.mh * 0.05,
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            iconData,
            color: iconColor,
            size: context.mw * 0.05,
          ),
        ),
        SizedBox(height: context.mh * 0.01),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.018,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2D3748),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.012,
            color: const Color(0xFF718096),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      height: context.mh * 0.06,
      width: 1,
      color: const Color(0xFFE2E8F0),
    );
  }
}
