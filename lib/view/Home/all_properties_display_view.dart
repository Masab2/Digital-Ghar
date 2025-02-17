// ignore_for_file: deprecated_member_use

import 'package:digital_ghar/Model/HouseForSaleModel/house_for_sale_model.dart';
import 'package:digital_ghar/Model/RentPropertiesModel/rent_properties_model.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/config/components/TextFormFeilds/search_text_form_feild.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/config/utils/filter_bottom_sheet_utils.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

import '../../config/color/app_color.dart';

class AllPropertiesDisplayView extends StatelessWidget {
  final List<HouseForSaleData> data;
  const AllPropertiesDisplayView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Search',
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.024,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Consumer<HouseForSellViewModel>(
          builder: (context, value, child) {
            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomizedFeilds(
                        onChanged: (newvalue) {
                          value.filterHouseBySearch(newvalue);
                          return null;
                        },
                        hintText: 'Search by Address',
                        prefixIcon: IconlyLight.search,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColor.blueColor.withOpacity(0.45),
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)),
                            ),
                            builder: (context) {
                              return const FilterBottomSheetContent();
                            },
                          );
                        },
                        icon: Icon(
                          IconlyLight.filter,
                          size: context.mh * 0.03,
                        ),
                      ),
                    ),
                    0.01.pw(context),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: value.filteredHouse.length,
                    itemBuilder: (context, index) {
                      var property = value.filteredHouse[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context,
                              RoutesNames.houseForSellPropertieDetailView,
                              arguments: {
                                "houseForSell": property,
                                "RentProperty": RentPropertiesData(),
                              });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: context.mw * 0.02,
                            vertical: context.mh * 0.02,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.greyColor.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    width: context.mw * 0.47,
                                    AppUrl.buildUrlImage(property.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: context.mw * 0.02,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              property.title,
                                              style: GoogleFonts.poppins(
                                                fontSize: context.mh * 0.014,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      0.01.ph(context),
                                      Row(
                                        children: [
                                          Text(
                                            property.price.toString(),
                                            style: GoogleFonts.poppins(
                                              fontSize: context.mh * 0.016,
                                              fontWeight: FontWeight.w600,
                                              color: AppColor.blueColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      0.01.ph(context),
                                      Row(
                                        children: [
                                          Icon(
                                            IconlyLight.location,
                                            size: context.mh * 0.020,
                                            color: AppColor.greyColor,
                                          ),
                                          0.01.pw(context),
                                          Expanded(
                                            child: Text(
                                              property.location,
                                              style: GoogleFonts.poppins(
                                                  fontSize: context.mh * 0.010,
                                                  color: AppColor.greyColor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ));
  }
}
