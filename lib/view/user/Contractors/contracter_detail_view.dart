import 'package:digital_ghar/Model/GetAllContractorProfileModel/get_all_contractor_profile_model.dart';
import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/config/widgets/ContracterUserWidget/contracter_detail_profile_card_widget.dart';
import 'package:digital_ghar/config/widgets/ContracterUserWidget/contractor_info_item_widget.dart';
import 'package:digital_ghar/config/widgets/ContracterUserWidget/stats_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class ContractorDetailView extends StatefulWidget {
  final ContractorProfileModelData data;
  const ContractorDetailView({
    super.key,
    required this.data,
  });

  @override
  State<ContractorDetailView> createState() => _ContractorDetailViewState();
}

class _ContractorDetailViewState extends State<ContractorDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconlyLight.arrow_left,
            color: Color(0xFF2D3748),
          ),
        ),
        title: Text(
          "Contractor Profile",
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.022,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2D3748),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              IconlyLight.send,
              color: Color(0xFF2D3748),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF8F9FA),
      body: Column(
        children: [
          // Custom App Bar

          // Content
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // Contractor Profile Header
                  ContracterDetailProfileCardWidget(data: widget.data),

                  SizedBox(height: context.mh * 0.025),

                  // Contractor Details
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: context.mw * 0.06),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Stats Section
                        StatsSectionWidget(data: widget.data),
                        SizedBox(height: context.mh * 0.025),
                        _buildSectionTitle(context, "Company Details"),
                        SizedBox(height: context.mh * 0.015),
                        Container(
                          padding: EdgeInsets.all(context.mw * 0.04),
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
                              // Company Name
                              ContractorInfoItemWidget(
                                icon: IconlyBold.work,
                                iconColor: const Color(0xFF4F80FF),
                                title: "Company Name",
                                value: widget.data.company,
                              ),

                              SizedBox(height: context.mh * 0.015),

                              // Address
                              ContractorInfoItemWidget(
                                icon: IconlyBold.location,
                                iconColor: const Color(0xFFED8936),
                                title: "Address",
                                value: widget.data.address,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: context.mh * 0.025),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Book Meeting Button
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.mw * 0.06,
              vertical: context.mh * 0.015,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x1A000000),
                  blurRadius: 10,
                  offset: Offset(0, -4),
                ),
              ],
            ),
            child: RoundBtn(
              text: "Quote Request",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesNames.bookConsultancyView,
                );
              },
              radius: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: context.mh * 0.018,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF4A5568),
      ),
    );
  }
}
