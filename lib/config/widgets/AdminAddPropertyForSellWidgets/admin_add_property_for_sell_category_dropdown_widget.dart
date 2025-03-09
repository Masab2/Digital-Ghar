import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/viewModel/CategoryViewModel/category_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminAddPropertyForSellCategoryDropdownWidget extends StatelessWidget {
  const AdminAddPropertyForSellCategoryDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryViewmodel>(
      builder: (context, viewModel, child) {
        final categories = [
          "Select the category",
          ...viewModel.categoryist
              .where((category) => category.name != "All")
              .map((category) => category.name)
        ];

        return Container(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: DropdownButtonFormField<String>(
            value: categories.contains(viewModel.selectedCategory)
                ? viewModel.selectedCategory
                : "Select the category",
            isExpanded: true,
            icon: const Icon(Icons.keyboard_arrow_down,
                color: AppColor.blueColor),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.category, color: AppColor.blueColor),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
            hint: const Text('Select property category'),
            validator: (value) => (value == null || value == "Select the category")
                ? 'Please select a category'
                : null,
            items: categories.map((category) {
              return DropdownMenuItem<String>(
                value: category,
                child: Text(category!, style: TextStyle(color: category == "Select the category" ? Colors.grey : Colors.black)),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null && newValue != "Select the category") {
                viewModel.updateSelectedCategory(newValue);
              }
            },
          ),
        );
      },
    );
  }
}
