import 'dart:math';
import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/widgets/AdminDashboardWidgets/property_house_for_sell_action_widget.dart';
import 'package:digital_ghar/data/Response/status.dart';
import 'package:digital_ghar/viewModel/AddPropertyViewModel/add_property_viewModel.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PropertyListForSell extends StatelessWidget {
  const PropertyListForSell({super.key});

  @override
  Widget build(BuildContext context) {
    final addPropertyViewmodel =
        Provider.of<AddPropertyViewmodel>(context, listen: false);
    return Consumer<HouseForSellViewModel>(builder: (context, value, child) {
      switch (value.houseForSellApiResponse.status) {
        case Status.completed:
          final house = value.houseForSellApiResponse.data?.data ?? [];
          final itemCount = min(3, house.length);

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
                addPropertyViewmodel: addPropertyViewmodel,
                propertyId: house[index].id,
                price: house[index].price.toString(),
                description: house[index].description,
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

  final AddPropertyViewmodel addPropertyViewmodel;
  final String propertyId;
  final String price;
  final String description;
  const PropertyListItemHouseForSell({
    super.key,
    required this.index,
    required this.title,
    required this.loaction,
    required this.addPropertyViewmodel,
    required this.propertyId,
    required this.price,
    required this.description,
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
      trailing: PropertyOptionsMenu(
        addPropertyViewmodel: addPropertyViewmodel,
        propertyId: propertyId,
        title: title,
        description: description,
        price: price,
        location: loaction,
      ),
    );
  }
}
