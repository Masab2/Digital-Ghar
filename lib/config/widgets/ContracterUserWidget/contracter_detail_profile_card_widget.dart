import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/components/RatingBarComp/rating_bar_forcontracter_detail_comp.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ContracterDetailProfileCardWidget extends StatelessWidget {
  final ContractorProfileModelData data;
  const ContracterDetailProfileCardWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.mw * 0.06,
        vertical: context.mh * 0.03,
      ),
      child: Column(
        children: [
          // Company Logo and Verification Badge
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: context.mh * 0.12,
                width: context.mh * 0.12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: data.companyLogo.isEmpty
                      ? AppColor.blueColor
                      : Colors.transparent,
                  image: data.companyLogo.isNotEmpty
                      ? DecorationImage(
                          image: NetworkImage(data.companyLogo),
                          fit: BoxFit.cover,
                        )
                      : null,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.blueColor.withOpacity(0.3),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: data.companyLogo.isEmpty
                    ? Icon(
                        IconlyBold.work,
                        color: Colors.white,
                        size: context.mw * 0.07,
                      )
                    : null,
              ),
              if (data.isActive)
                Container(
                  height: context.mh * 0.035,
                  width: context.mh * 0.035,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.verified,
                    color: Colors.green,
                    size: 14,
                  ),
                ),
            ],
          ),

          SizedBox(height: context.mh * 0.02),

          // Contractor Name and Role
          Text(
            data.name,
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.024,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF2D3748),
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: context.mh * 0.005),

          Text(
            data.role,
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.016,
              color: const Color(0xFF718096),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: context.mh * 0.015),

          // Rating Display
          if (data.ratings != null)
            RatingBarForcontracterDetailComp(
              data: data,
            ),
        ],
      ),
    );
  }
}
