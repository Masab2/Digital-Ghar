import 'package:digital_ghar/viewModel/HomeQuotationViewModel/home_quotation_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResponsiveRadioItemListtileComp extends StatelessWidget {
  final String selectedHouseType;
  final String selectedSize;
  final bool isSelected;
  final String size;
  
  const ResponsiveRadioItemListtileComp({
    super.key,
    required this.selectedHouseType,
    required this.selectedSize,
    required this.isSelected,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive sizing
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 360;
    
    return Consumer<HomeQuotationViewModel>(
      builder: (context, value, child) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? const Color(0xFF4F80FF) : const Color(0xFFE2E8F0),
              width: 1,
            ),
            color: isSelected ? const Color(0xFFEDF2FF) : Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenWidth * 0.02,
              horizontal: screenWidth * 0.03,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.straighten,
                  color: isSelected ? const Color(0xFF4F80FF) : const Color(0xFF718096),
                  size: isSmallScreen ? 18 : 22,
                ),
                SizedBox(width: screenWidth * 0.02),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        size,
                        style: GoogleFonts.poppins(
                          fontSize: isSmallScreen ? 14 : 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF2D3748),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        value.getSizeDescription(size),
                        style: GoogleFonts.poppins(
                          fontSize: isSmallScreen ? 10 : 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF718096),
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: isSmallScreen ? 24 : 28,
                  height: isSmallScreen ? 24 : 28,
                  child: Radio(
                    value: size,
                    groupValue: selectedSize,
                    activeColor: const Color(0xFF4F80FF),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                    onChanged: (newVal) {
                      value.updateRadioValue(newVal ?? '');
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}