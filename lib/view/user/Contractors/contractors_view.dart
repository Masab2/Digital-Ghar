// ignore_for_file: deprecated_member_use

import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/components/TextFormFeilds/search_text_form_feild.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/viewModel/contracters/contract_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

// Model for Contractor data
class ContractorModel {
  final String id;
  final String name;
  final String specialization;
  final String location;
  final String imageUrl;
  final String contactNumber;
  final double rating;
  final int completedProjects;
  final bool isVerified;

  ContractorModel({
    required this.id,
    required this.name,
    required this.specialization,
    required this.location,
    required this.imageUrl,
    required this.contactNumber,
    required this.rating,
    required this.completedProjects,
    required this.isVerified,
  });
}

// ViewModel for Contractor

// Filter Bottom Sheet specifically for Contractors
class ContractorFilterBottomSheet extends StatelessWidget {
  const ContractorFilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ContractorsUserViewModel>(context);
    
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.mw * 0.04,
        vertical: context.mh * 0.02,
      ),
      height: context.mh * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: context.mw * 0.15,
              height: context.mh * 0.005,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: context.mh * 0.02),
          Text(
            'Filter Contractors',
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.024,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.mh * 0.02),
          Text(
            'Specialization',
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.018,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: context.mh * 0.01),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2.5,
                crossAxisSpacing: context.mw * 0.02,
                mainAxisSpacing: context.mh * 0.01,
              ),
              itemCount: viewModel.specializations.length,
              itemBuilder: (context, index) {
                final specialization = viewModel.specializations[index];
                final isSelected = viewModel.selectedSpecialization == specialization;
                
                return GestureDetector(
                  onTap: () {
                    viewModel.filterBySpecialization(specialization);
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isSelected ? AppColor.blueColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isSelected ? AppColor.blueColor : Colors.grey.withOpacity(0.5),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      specialization,
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.014,
                        fontWeight: FontWeight.w500,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: context.mh * 0.01),
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.blueColor,
                padding: EdgeInsets.symmetric(vertical: context.mh * 0.015),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Apply',
                style: GoogleFonts.poppins(
                  fontSize: context.mh * 0.018,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContractorsView extends StatelessWidget {
  const ContractorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ContractorsUserViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Contractors',
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.024,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
          child: Consumer<ContractorsUserViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                children: [
                  // Search and Filter Section
                  Row(
                    children: [
                      Expanded(
                        child: CustomizedFeilds(
                          onChanged: (value) {
                            viewModel.filterBySearch(value);
                            return null;
                          },
                          hintText: 'Search contractors',
                          prefixIcon: IconlyLight.search,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.blueColor.withOpacity(0.45),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              builder: (context) {
                                return const ContractorFilterBottomSheet();
                              },
                            );
                          },
                          icon: Icon(
                            IconlyLight.filter,
                            size: context.mh * 0.03,
                          ),
                        ),
                      ),
                      SizedBox(width: context.mw * 0.01),
                    ],
                  ),
                  SizedBox(height: context.mh * 0.02),
                  // Specialization chips
                  SizedBox(
                    height: context.mh * 0.05,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: viewModel.specializations.length,
                      itemBuilder: (context, index) {
                        final specialization = viewModel.specializations[index];
                        final isSelected = viewModel.selectedSpecialization == specialization;
                        
                        return GestureDetector(
                          onTap: () => viewModel.filterBySpecialization(specialization),
                          child: Container(
                            margin: EdgeInsets.only(right: context.mw * 0.02),
                            padding: EdgeInsets.symmetric(
                              horizontal: context.mw * 0.03,
                              vertical: context.mh * 0.005,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected ? AppColor.blueColor : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: isSelected ? AppColor.blueColor : Colors.grey.withOpacity(0.5),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                specialization,
                                style: GoogleFonts.poppins(
                                  fontSize: context.mh * 0.014,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: context.mh * 0.02),
                  // Contractors List
                  Expanded(
                    child: viewModel.filteredContractors.isEmpty
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.search_off_rounded,
                                  size: context.mh * 0.06,
                                  color: AppColor.greyColor,
                                ),
                                SizedBox(height: context.mh * 0.02),
                                Text(
                                  'No contractors found',
                                  style: GoogleFonts.poppins(
                                    fontSize: context.mh * 0.018,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.greyColor,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            itemCount: viewModel.filteredContractors.length,
                            itemBuilder: (context, index) {
                              final contractor = viewModel.filteredContractors[index];
                              return ContractorCard(contractor: contractor);
                            },
                          ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ContractorCard extends StatelessWidget {
  final ContractorModel contractor;

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
                    image: NetworkImage(contractor.imageUrl),
                    fit: BoxFit.cover,
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
                        if (contractor.isVerified)
                          Icon(
                            Icons.verified,
                            color: AppColor.blueColor,
                            size: context.mh * 0.022,
                          ),
                      ],
                    ),
                    SizedBox(height: context.mh * 0.005),
                    // Specialization
                    Text(
                      contractor.specialization,
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
                            contractor.location,
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
                              contractor.rating.toString(),
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
                              '${contractor.completedProjects} Projects',
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