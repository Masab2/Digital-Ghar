import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';
import 'package:digital_ghar/config/components/PropertyDetailsComponents/property_agent_card_comp.dart';
import 'package:digital_ghar/config/components/PropertyDetailsComponents/property_category_comp.dart';
import 'package:digital_ghar/config/components/PropertyDetailsComponents/property_image_comp.dart';
import 'package:digital_ghar/config/components/PropertyDetailsComponents/property_info_card_component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digital_ghar/Model/HouseForSaleModel/house_for_sale_model.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';

class PropertyDetailView extends StatelessWidget {
  final HouseForSaleData? data;
  final RentPropertiesData? rentData;
  const PropertyDetailView({super.key, required this.data, this.rentData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Property Details',
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.024,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PropertyImageCarousel(
                imageUrl: rentData == RentPropertiesData()
                    ? data?.image ?? ""
                    : rentData?.image ?? ""),
            Padding(
              padding: EdgeInsets.all(context.mw * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rentData == RentPropertiesData()
                        ? data?.title ?? ""
                        : rentData?.title ?? "",
                    style: GoogleFonts.poppins(
                      fontSize: context.mh * 0.022,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  0.01.ph(context),
                  Text(
                    rentData == RentPropertiesData()
                        ? data?.description ?? ""
                        : rentData?.description ?? "",
                    style: GoogleFonts.poppins(
                      fontSize: context.mh * 0.018,
                    ),
                  ),
                  0.02.ph(context),
                  Text(
                    '${rentData == RentPropertiesData() ? data?.price ?? "" : rentData?.price ?? ""} Rs',
                    style: GoogleFonts.poppins(
                      fontSize: context.mh * 0.020,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blueColor,
                    ),
                  ),
                  0.02.ph(context),
                  PropertyInfoCard(
                    data: data ?? HouseForSaleData(),
                    rentdata:
                        rentData == RentPropertiesData() ? null : rentData,
                  ),
                  0.02.ph(context),
                  PropertyCategory(
                    category: rentData == RentPropertiesData()
                        ? data?.category ?? ""
                        : rentData?.category ?? "",
                  ),
                  0.02.ph(context),
                  const PropertyAgentCard(
                      agentName: "Masab Haider", agentContact: "+923264747056"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
