import 'package:digital_ghar/config/components/RadioItemListTileComp/radio_item_listTile_comp.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:digital_ghar/viewModel/HomeQuotationViewModel/home_quotation_viewModel.dart';

class HouseSizeSelector extends StatelessWidget {
  final String selectedHouseType;
  final List<String> houseSizes;

  const HouseSizeSelector({
    super.key,
    required this.selectedHouseType,
    required this.houseSizes,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeQuotationViewModel>(context);
    final selectedSize = viewModel.selectedValue;

    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Column(
        children: [
          ...houseSizes.map((size) {
            final isSelected = size == selectedSize;
            return GestureDetector(
              onTap: () {
                viewModel.updateRadioValue(size);
              },
              child: RadioItemListtileComp(
                selectedHouseType: selectedHouseType,
                selectedSize: selectedSize,
                isSelected: isSelected,
                size: size,
              ),
            );
          }).toList(),
          GestureDetector(
            onTap: () {
              viewModel.updateRadioValue("Other");
            },
            child: RadioItemListtileComp(
              selectedHouseType: selectedHouseType,
              selectedSize: selectedSize,
              isSelected: "Other" == selectedSize,
              size: "Other",
            ),
          ),
        ],
      ),
    );
  }
}
