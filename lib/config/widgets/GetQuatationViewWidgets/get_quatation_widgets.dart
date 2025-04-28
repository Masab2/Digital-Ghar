import 'package:digital_ghar/config/components/RadioItemListTileComp/radio_item_listTile_comp.dart';
import 'package:digital_ghar/viewModel/CategoryViewModel/category_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:digital_ghar/viewModel/HomeQuotationViewModel/home_quotation_viewModel.dart';

class HouseSizeSelector extends StatelessWidget {
  final String selectedHouseType;

  const HouseSizeSelector({
    super.key,
    required this.selectedHouseType,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeQuotationViewModel>(context);
    final selectedSize = viewModel.selectedValue;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.all(screenWidth * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Consumer<CategoryViewmodel>(
        builder: (context, value, child) {
         final items = [
            ...value.categoryist
                .where((size) => size.name?.toLowerCase() != "all")
                .map((size) => {
                      "name": size.name ?? "",
                      "isOther": false,
                    }),
            {
              "name": "Other",
              "isOther": true,
            }
          ];


          final crossAxisCount = screenWidth > 600 ? 3 : 2;

          final childAspectRatio = screenWidth > 600 ? 3.2 : 2.3;

          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: screenWidth * 0.03,
              mainAxisSpacing: screenWidth * 0.03,
              childAspectRatio: childAspectRatio,
            ),
            itemBuilder: (context, index) {
              final item = items[index];
              final name = item["name"] as String;
              final isSelected = name == selectedSize;

              return GestureDetector(
                onTap: () {
                  viewModel.isPredicting = false;
                  viewModel.predictedCost = '';
                  viewModel.updateRadioValue(name);
                },
                child: ResponsiveRadioItemListtileComp(
                  selectedHouseType: selectedHouseType,
                  selectedSize: selectedSize,
                  isSelected: isSelected,
                  size: name,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
