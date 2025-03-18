import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingBarForcontracterDetailComp extends StatelessWidget {
  final ContractorProfileModelData data;
  const RatingBarForcontracterDetailComp({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
   final double rating = data.ratings?.averageRating ?? 0.0;
    final double ratingCount = data.ratings?.rating ?? 0;
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Stars
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating.floor() 
                  ? Icons.star 
                  : (index == rating.floor() && rating % 1 > 0) 
                      ? Icons.star_half 
                      : Icons.star_border,
              color: const Color(0xFFFFB800),
              size: context.mw * 0.05,
            );
          }),
        ),
        
        SizedBox(width: context.mw * 0.02),
        
        // Rating Number
        Text(
          "$rating",
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.016,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2D3748),
          ),
        ),
        
        SizedBox(width: context.mw * 0.01),
        
        // Number of Reviews
        Text(
          "($ratingCount ${ratingCount == 1 ? 'review' : 'reviews'})",
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.014,
            color: const Color(0xFF718096),
          ),
        ),
      ],
    );
  }
}