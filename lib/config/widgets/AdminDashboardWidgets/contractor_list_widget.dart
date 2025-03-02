import 'dart:math';

import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/data/Response/status.dart';
import 'package:digital_ghar/viewModel/ContractorProfileViewModel/contractor_profile_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class ContractorsList extends StatelessWidget {
  const ContractorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContractorProfileViewmodel>(
      builder: (context, value, child) {
        switch (value.apiResponse.status) {
          case Status.loading:
            return const SizedBox(
              height: 50,
              child: Center(child: Text("Loading...")),
            );
          case Status.completed:
            final contractors = value.apiResponse.data?.profiles ?? [];
            final itemCount =
                min(3, contractors.length); // Ensure only 3 or fewer are shown

            if (contractors.isEmpty) {
              return const Center(child: Text("No contractors available"));
            }

            return Container(
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: itemCount,
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey.withOpacity(0.2),
                  height: 1,
                ),
                itemBuilder: (context, index) => ContractorListItem(
                  index: index,
                  name: contractors[index].name,
                  company: contractors[index].company,
                  status: contractors[index].isActive.toString(),
                ),
              ),
            );
          case Status.error:
            return const Center(child: Text("Error fetching contractors"));
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}

class ContractorListItem extends StatelessWidget {
  final int index;
  final String name;
  final String company;
  final String status;

  const ContractorListItem(
      {super.key,
      required this.index,
      required this.name,
      required this.company,
      required this.status});

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
        name,
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.016,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        company,
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.014,
          color: AppColor.greyColor,
        ),
      ),
      trailing: StatusBadge(text: status),
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
        text == "true" ? "Active" : "Inactive",
        style: GoogleFonts.aBeeZee(
          color: AppColor.blueColor,
          fontSize: context.mh * 0.014,
        ),
      ),
    );
  }
}
