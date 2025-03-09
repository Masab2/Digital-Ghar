import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/data/Response/status.dart';
import 'package:digital_ghar/viewModel/CategoryViewModel/category_viewModel.dart';
import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final houseProvider =
        Provider.of<HouseForSellViewModel>(context, listen: false);
    return Consumer<CategoryViewmodel>(
      builder: (context, value, child) {
        switch (value.categoryApiResponse.status) {
          case Status.loading:
            return Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: context.mh * 0.05,
                margin: EdgeInsets.symmetric(
                  horizontal: context.mw * 0.015,
                ),
                child: ListView.builder(
                  itemCount: 5, // Placeholder count
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: context.mh * 0.03,
                      width: context.mw * 0.30,
                      margin: EdgeInsets.symmetric(
                        horizontal: context.mw * 0.006,
                      ),
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
            return Container(
              height: context.mh * 0.04,
              margin: EdgeInsets.symmetric(
                horizontal: context.mw * 0.015,
              ),
              child: ListView.builder(
                itemCount: value.categoryApiResponse.data?.data?.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var data = value.categoryApiResponse.data?.data?[index];
                  bool isSelected = value.selectedCategoryIndex == index;
                  return GestureDetector(
                    onTap: () {
                      value.updateSelectedCategoryIndex(index);
                      houseProvider.filterHousesByChips(
                        index,
                        data?.name,
                      );
                    },
                    child: Container(
                      width: index == 0 ? context.mw * 0.15 : context.mw * 0.30,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColor.blueColor.withOpacity(0.7)
                            : AppColor.blueColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: context.mw * 0.006,
                      ),
                      child: Center(
                        child: Text(
                          data?.name ?? "",
                          style: GoogleFonts.poppins(
                            color: isSelected ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: context.mh * 0.016
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          case Status.error:
            return Text(value.categoryApiResponse.message.toString());
          default:
            return const Text("No Categories Found");
        }
      },
    );
  }
}
