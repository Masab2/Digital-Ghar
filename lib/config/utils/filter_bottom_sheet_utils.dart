// ignore_for_file: library_private_types_in_public_api

import 'package:digital_ghar/viewModel/HouseForSellViewModel/house_for_sell_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterBottomSheetContent extends StatefulWidget {
  const FilterBottomSheetContent({super.key});

  @override
  _FilterBottomSheetContentState createState() =>
      _FilterBottomSheetContentState();
}

class _FilterBottomSheetContentState extends State<FilterBottomSheetContent> {
  RangeValues _priceRange = const RangeValues(100000, 300000);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HouseForSellViewModel>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Filter Options",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Price Range",
            style: GoogleFonts.poppins(fontSize: 16),
          ),
          RangeSlider(
            values: _priceRange,
            min: 0,
            max: 1000000,
            divisions: 20,
            labels: RangeLabels(
              "${_priceRange.start.round()}Rs",
              "${_priceRange.end.round()}Rs",
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _priceRange = values;
              });
            },
          ),
          Text(
            "Selected Range: ${_priceRange.start.round()}Rs - ${_priceRange.end.round()}Rs",
            style: GoogleFonts.poppins(fontSize: 14),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              provider.filterProductsByPrice(
                  _priceRange.start, _priceRange.end);
              Navigator.pop(context);
            },
            child: const Text("Apply Filters"),
          ),
        ],
      ),
    );
  }
}
