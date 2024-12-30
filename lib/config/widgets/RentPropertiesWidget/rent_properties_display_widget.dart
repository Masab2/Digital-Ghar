import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/data/Response/status.dart';
import 'package:digital_ghar/viewModel/RentPropertiesViewModel/rent_properties_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class RentPropertiesDisplayWidget extends StatelessWidget {
  const RentPropertiesDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RentPropertiesViewmodel>(
      builder: (context, value, child) {
        switch (value.rentPropertiesApiResponse.status) {
          case Status.loading:
            return SizedBox(
              height: context.mh * 0.35,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5, // Simulate 5 shimmer items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.mw * 0.02,
                      vertical: context.mh * 0.01,
                    ),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Row(
                        children: [
                          Container(
                            height: context.mw * 0.25,
                            width: context.mw * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          0.02.pw(context),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: context.mh * 0.02,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                                0.01.ph(context),
                                Container(
                                  height: context.mh * 0.018,
                                  width: context.mw * 0.5,
                                  color: Colors.grey,
                                ),
                                0.01.ph(context),
                                Container(
                                  height: context.mh * 0.018,
                                  width: context.mw * 0.3,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          case Status.completed:
            final rentProperties =
                value.rentPropertiesApiResponse.data?.data ?? [];
            return SizedBox(
              height: context.mh * 0.35,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: rentProperties.length,
                itemBuilder: (context, index) {
                  final property = rentProperties[index];
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.mw * 0.02,
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                AppUrl.buildUrlImage(property.image),
                                height: context.mw * 0.25,
                                width: context.mw * 0.25,
                                fit: BoxFit.cover,
                              ),
                            ),
                            0.02.pw(context),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.mw * 0.03,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          property.propertyType,
                                          style: GoogleFonts.poppins(
                                            fontSize: context.mh * 0.014,
                                            color: AppColor.blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    property.title,
                                    style: GoogleFonts.poppins(
                                      fontSize: context.mh * 0.017,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  0.01.ph(context),
                                  Text(
                                    property.location,
                                    style: GoogleFonts.poppins(
                                      fontSize: context.mh * 0.015,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '${property.price}Rs / month',
                                    style: GoogleFonts.poppins(
                                      fontSize: context.mh * 0.018,
                                      color: AppColor.blueColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey.shade300, endIndent: context.mw * 0.02, indent: context.mw * 0.02, thickness: 0.3,),
                    ],
                  );
                },
              ),
            );
          case Status.error:
            return Text(
              value.rentPropertiesApiResponse.message.toString(),
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.02,
                color: Colors.red,
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
