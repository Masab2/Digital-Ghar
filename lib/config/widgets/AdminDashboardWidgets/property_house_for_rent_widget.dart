import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';



class PropertyListForRent extends StatelessWidget {
  const PropertyListForRent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.withOpacity(0.2),
          height: 1,
        ),
        itemBuilder: (context, index) =>
            PropertyListItemHouseForRent(index: index),
      ),
    );
  }
}

class PropertyListItemHouseForRent extends StatelessWidget {
  final int index;

  const PropertyListItemHouseForRent({super.key, required this.index});

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
        'Luxury Villa ${index + 1}',
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.016,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        'Bhopal, MP',
        style: GoogleFonts.aBeeZee(
          fontSize: context.mh * 0.014,
          color: AppColor.greyColor,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(IconlyLight.more_circle),
        onPressed: () {},
      ),
    );
  }
}
