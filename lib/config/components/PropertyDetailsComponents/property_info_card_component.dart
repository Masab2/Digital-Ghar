import 'package:digital_ghar/Model/HouseForSaleModel/house_for_sale_model.dart';
import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/utils/custom_date_time_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyInfoCard extends StatelessWidget {
  final HouseForSaleData? data;
  final RentPropertiesData? rentdata;
  const PropertyInfoCard({super.key, required this.data, this.rentdata});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.mw,
      padding: EdgeInsets.all(context.mw * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: 'Location:     ',
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.016,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: rentdata == null
                      ? data?.location ?? ""
                      : rentdata?.location ?? "",
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.016,
                    color: AppColor.blueColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          0.01.ph(context),
          Text(
              'Category:    ${rentdata == null ? data?.category : rentdata?.category ?? ""}',
              style: GoogleFonts.poppins(fontSize: context.mh * 0.016)),
          0.01.ph(context),
          Text(
              'Posted on:   ${CustomDateTimeUtil.formatTime(rentdata == null ? data?.date ?? "" : rentdata?.date ?? "")}',
              style: GoogleFonts.poppins(fontSize: context.mh * 0.016)),
        ],
      ),
    );
  }
}
