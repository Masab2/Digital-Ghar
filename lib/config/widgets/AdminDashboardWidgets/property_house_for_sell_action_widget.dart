import 'dart:developer';

import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/utils/delete_confirmation_dialog.dart';
import 'package:digital_ghar/config/utils/edit_house_for_sell_dialog.dart';
import 'package:digital_ghar/viewModel/AddPropertyViewModel/add_property_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class PropertyOptionsMenu extends StatelessWidget {
  final AddPropertyViewmodel addPropertyViewmodel;
  final String propertyId;
  final String title;
  final String description;
  final String price;
  final String location;
  final String category;

  const PropertyOptionsMenu({
    super.key,
    required this.addPropertyViewmodel,
    required this.propertyId,
    required this.title,
    required this.description,
    required this.price,
    required this.location, required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(IconlyLight.more_circle),
      offset: const Offset(0, 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColor.whiteColor,
      itemBuilder: (context) => [
        _buildHeader(context),
        _buildMenuItem(
          context,
          value: 'edit',
          icon: IconlyBold.edit,
          color: AppColor.blueColor,
          title: 'Edit Property',
          subtitle: 'Modify property details',
        ),
        _buildDivider(),
        _buildMenuItem(
          context,
          value: 'delete',
          icon: IconlyBold.delete,
          color: Colors.redAccent,
          title: 'Delete Property',
          subtitle: 'Remove from listings',
        ),
        _buildFooter(context),
      ],
      onSelected: (value) {
        if (value == 'edit') {
          log(description);
          Map<String, dynamic> existingPropertyData = {
            "title": title,
            "description": description,
            "price": price,
            "location": location,
            "category": category,
          };
          EditPropertyDialog.show(
            context,
            addPropertyViewmodel,
            propertyId,
            existingPropertyData,
          );
        } else if (value == 'delete') {
          DeleteConfirmationDialog.showDeleteConfirmationDialog(
            context,
            addPropertyViewmodel,
            propertyId,
          );
        }
      },
    );
  }

  PopupMenuItem<String> _buildHeader(BuildContext context) {
    return PopupMenuItem<String>(
      enabled: false,
      height: context.mh * 0.04,
      padding: EdgeInsets.zero,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.04,
          vertical: context.mh * 0.01,
        ),
        decoration: BoxDecoration(
          color: AppColor.blueColor.withOpacity(0.1),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Text(
          'Options',
          style: GoogleFonts.aBeeZee(
            fontSize: context.mh * 0.018,
            fontWeight: FontWeight.w600,
            color: AppColor.blueColor,
          ),
        ),
      ),
    );
  }

  PopupMenuItem<String> _buildMenuItem(
    BuildContext context, {
    required String value,
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return PopupMenuItem<String>(
      value: value,
      height: context.mh * 0.065,
      padding: EdgeInsets.symmetric(
        horizontal: context.mw * 0.04,
        vertical: context.mh * 0.01,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(context.mw * 0.02),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: color, size: context.mw * 0.04),
          ),
          SizedBox(width: context.mw * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.016,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: context.mh * 0.002),
                Text(
                  subtitle,
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

  PopupMenuItem<String> _buildDivider() {
    return PopupMenuItem<String>(
      enabled: false,
      height: 1,
      padding: EdgeInsets.zero,
      child: Divider(
        height: 1,
        thickness: 1,
        color: Colors.grey.withOpacity(0.1),
      ),
    );
  }

  PopupMenuItem<String> _buildFooter(BuildContext context) {
    return PopupMenuItem<String>(
      enabled: false,
      height: context.mh * 0.04,
      padding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.mw * 0.02,
          vertical: context.mh * 0.01,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.05),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cancel',
                style: GoogleFonts.aBeeZee(
                  color: AppColor.greyColor,
                  fontSize: context.mh * 0.014,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
