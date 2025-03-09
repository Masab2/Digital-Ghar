import 'dart:math';

import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/utils/delete_confirmation_dialog.dart';
import 'package:digital_ghar/data/Response/status.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class PropertyListForSell extends StatelessWidget {
  const PropertyListForSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HouseForSellViewModel>(builder: (context, value, child) {
      switch (value.houseForSellApiResponse.status) {
        case Status.completed:
          final house = value.houseForSellApiResponse.data?.data ?? [];
          final itemCount =
              min(3, house.length);

          if (house.isEmpty) {
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
              itemBuilder: (context, index) => PropertyListItemHouseForSell(
                index: index,
                title: house[index].title,
                loaction: house[index].location,
              ),
            ),
          );
        case Status.error:
          return Center(
              child: Text(value.houseForSellApiResponse.message ?? ""));
        default:
          return const SizedBox.shrink();
      }
    });
  }
}



class PropertyListItemHouseForSell extends StatelessWidget {
  final int index;
  final String title;
  final String loaction;
  final Function(int)? onEdit;
  final Function(int)? onDelete;

  const PropertyListItemHouseForSell({
    super.key,
    required this.index,
    required this.title,
    required this.loaction,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: context.mw * 0.12,
        height: context.mw * 0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage(ImageAsset.images),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.016,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        loaction,
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.014,
          color: AppColor.greyColor,
        ),
      ),
      trailing: PopupMenuButton<String>(
        icon: const Icon(IconlyLight.more_circle),
        offset: const Offset(0, 10),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: AppColor.whiteColor,
        itemBuilder: (context) => [
          // Header
          PopupMenuItem<String>(
            enabled: false,
            height: context.mh * 0.04,
            padding: EdgeInsets.zero,
            child: Container(
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
              child: Row(
                children: [
                  Text(
                    'Options',
                    style: GoogleFonts.aBeeZee(
                      fontSize: context.mh * 0.018,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blueColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Edit option
          PopupMenuItem<String>(
            value: 'edit',
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
                    color: AppColor.blueColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    IconlyBold.edit,
                    color: AppColor.blueColor,
                    size: context.mw * 0.04,
                  ),
                ),
                SizedBox(width: context.mw * 0.03),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Edit Property',
                        style: GoogleFonts.aBeeZee(
                          fontSize: context.mh * 0.016,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: context.mh * 0.002),
                      Text(
                        'Modify property details',
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
          ),
          // Divider
          PopupMenuItem<String>(
            enabled: false,
            height: 1,
            padding: EdgeInsets.zero,
            child: Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey.withOpacity(0.1),
            ),
          ),
          // Delete option
          PopupMenuItem<String>(
            value: 'delete',
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
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    IconlyBold.delete,
                    color: Colors.redAccent,
                    size: context.mw * 0.04,
                  ),
                ),
                SizedBox(width: context.mw * 0.03),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delete Property',
                        style: GoogleFonts.aBeeZee(
                          fontSize: context.mh * 0.016,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: context.mh * 0.002),
                      Text(
                        'Remove from listings',
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
          ),
          // Footer
          PopupMenuItem<String>(
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
          ),
        ],
        onSelected: (value) {
          if (value == 'edit') {
            onEdit?.call(index);
          } else if (value == 'delete') {
            DeleteConfirmationDialog.showDeleteConfirmationDialog(
                context, onDelete, index);
          }
        },
      ),
    );
  }
}
