import 'package:digital_ghar/viewModel/HomeQuotationViewModel/home_quotation_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RadioItemListtileComp extends StatelessWidget {
  final String selectedHouseType;
  final String selectedSize;
  final bool isSelected;
  final String size;
  const RadioItemListtileComp(
      {super.key,
      required this.selectedHouseType,
      required this.selectedSize,
      required this.isSelected,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeQuotationViewModel>(builder: (context, value, child) {
      return Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isSelected ? const Color(0xFF4F80FF) : const Color(0xFFE2E8F0),
            width: 1,
          ),
          color: isSelected ? const Color(0xFFEDF2FF) : Colors.white,
        ),
        child: Row(
          children: [
            Icon(
              Icons.straighten,
              color: isSelected
                  ? const Color(0xFF4F80FF)
                  : const Color(0xFF718096),
              size: 22,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  size,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2D3748),
                  ),
                ),
                Text(
                  value.getSizeDescription(size),
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF718096),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Radio(
              value: size,
              groupValue: selectedSize,
              activeColor: const Color(0xFF4F80FF),
              onChanged: (newVal) {
                value.updateRadioValue(newVal ?? '');
              },
            ),
          ],
        ),
      );
    });
  }
}
