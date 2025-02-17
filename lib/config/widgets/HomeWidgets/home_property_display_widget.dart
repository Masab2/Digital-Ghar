// ignore_for_file: deprecated_member_use

import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/data/Response/status.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class HomePropertyDisplayWidget extends StatelessWidget {
  const HomePropertyDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HouseForSellViewModel>(
      builder: (context, value, child) {
        switch (value.houseForSellApiResponse.status) {
          case Status.loading:
            return SizedBox(
              height: context.mh * 0.35,
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 9, // Placeholder for shimmer
                  itemBuilder: (context, index) {
                    return Container(
                      height: context.mh * 0.25,
                      width: context.mw * 0.70,
                      margin:
                          EdgeInsets.symmetric(horizontal: context.mw * 0.02),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),
              ),
            );
          case Status.completed:
            final properties = value.filteredHouse;
            final displayCount = properties.length > 9 ? 9 : properties.length;

            return SizedBox(
              height: context.mh * 0.35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: displayCount + 1,
                itemBuilder: (context, index) {
                  if (index < displayCount) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context,
                            RoutesNames.houseForSellPropertieDetailView,
                            arguments: {
                              "houseForSell": properties[index],
                              "RentProperty": RentPropertiesData(),
                            });
                      },
                      child: Container(
                        height: context.mh * 0.25,
                        width: context.mw * 0.70,
                        decoration: BoxDecoration(
                          color: AppColor.greyColor.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: EdgeInsets.only(
                          left: context.mw * 0.02,
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                height: context.mh * 0.20,
                                width: context.mw * 0.80,
                                AppUrl.buildUrlImage(properties[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            0.01.ph(context),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: context.mw * 0.02,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(properties[index].title,
                                          style: GoogleFonts.poppins(
                                            fontSize: context.mh * 0.018,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ],
                                  ),
                                  0.01.ph(context),
                                  Row(
                                    children: [
                                      Text(
                                        "${properties[index].price.toString()} Rs",
                                        style: GoogleFonts.poppins(
                                          fontSize: context.mh * 0.016,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.blueColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  0.02.ph(context),
                                  Row(
                                    children: [
                                      Icon(IconlyLight.location,
                                          size: context.mh * 0.02,
                                          color: AppColor.greyColor),
                                      Text(
                                        properties[index].location,
                                        style: GoogleFonts.poppins(
                                            fontSize: context.mh * 0.013,
                                            color: AppColor.greyColor),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return displayCount > 0
                        ? GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RoutesNames.allPropertiesView,
                                arguments: properties,
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              height: context.mh * 0.25,
                              width: context.mw * 0.30,
                              decoration: BoxDecoration(
                                color: AppColor.greyColor.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.symmetric(
                                  horizontal: context.mw * 0.02),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(IconlyLight.arrow_right,
                                        size: context.mh * 0.02,
                                        color: AppColor.blueColor),
                                    0.01.pw(context),
                                    Text(
                                      "Show More",
                                      style: GoogleFonts.poppins(
                                        fontSize: context.mh * 0.015,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.blueColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : const SizedBox();
                  }
                },
              ),
            );
          case Status.error:
            return SizedBox(
              height: context.mh * 0.35,
              child: Center(
                child: Text(
                  value.houseForSellApiResponse.message.toString(),
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
