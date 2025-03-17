import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ContractorCard extends StatelessWidget {
  final ContractorProfileModelData contractor;

  const ContractorCard({super.key, required this.contractor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.mh * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          // Navigate to contractor details page
          // Navigator.pushNamed(context, RoutesNames.contractorDetailsView, arguments: contractor);
        },
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: EdgeInsets.all(context.mw * 0.03),
          child: Row(
            children: [
              // Contractor Image
              Container(
                width: context.mw * 0.2,
                height: context.mw * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: NetworkImage(contractor.companyLogo),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: context.mw * 0.03),
              // Contractor Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name and Verification Badge
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            contractor.name,
                            style: GoogleFonts.poppins(
                              fontSize: context.mh * 0.018,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        
                      ],
                    ),
                    SizedBox(height: context.mh * 0.005),
                    // Specialization
                    Text(
                      contractor.company,
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.014,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blueColor,
                      ),
                    ),
                    SizedBox(height: context.mh * 0.005),
                    // Location
                    Row(
                      children: [
                        Icon(
                          IconlyLight.location,
                          size: context.mh * 0.016,
                          color: AppColor.greyColor,
                        ),
                        SizedBox(width: context.mw * 0.01),
                        Expanded(
                          child: Text(
                            contractor.address,
                            style: GoogleFonts.poppins(
                              fontSize: context.mh * 0.012,
                              color: AppColor.greyColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: context.mh * 0.01),
                    // Rating and Projects
                    Row(
                      children: [
                        // Rating
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: context.mh * 0.018,
                            ),
                            SizedBox(width: context.mw * 0.01),
                            Text(
                              contractor.ratings?.averageRating.toString() ?? "",
                              style: GoogleFonts.poppins(
                                fontSize: context.mh * 0.014,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: context.mw * 0.04),
                        // Projects
                        Row(
                          children: [
                            Icon(
                              IconlyLight.work,
                              color: AppColor.blueColor,
                              size: context.mh * 0.018,
                            ),
                            SizedBox(width: context.mw * 0.01),
                            Text(
                              '${contractor.projectsCompleted} Projects',
                              style: GoogleFonts.poppins(
                                fontSize: context.mh * 0.014,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Contact Button
              Container(
                decoration: BoxDecoration(
                  color: AppColor.blueColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () {
                    // Implement call functionality
                  },
                  icon: Icon(
                    IconlyLight.call,
                    color: AppColor.blueColor,
                    size: context.mh * 0.025,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}