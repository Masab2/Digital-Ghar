import 'package:digital_ghar/config/assets/image_asset.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignsListView extends StatelessWidget {
  const DesignsListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for design list
    final List<Map<String, String>> designs = [
      {
        "title": "Modern Vacation Home",
        "description": "A luxurious villa with contemporary architecture.",
        "image": ImageAsset.images,
      },
      {
        "title": "Office Space",
        "description": "A well-designed office space with open work areas.",
        "image": ImageAsset.images,
      },
      {
        "title": "Apartment Design",
        "description":
            "Spacious apartment with a blend of elegance and comfort.",
        "image": ImageAsset.images,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Approved Designs',
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.022,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2D3748),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: context.mh * 0.02,
          left: context.mw * 0.04,
          right: context.mw * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your perfect design',
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.018,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF2D3748),
              ),
            ),
            SizedBox(height: context.mh * 0.01),
            Text(
              'Browse our collection of premium designs',
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.015,
                color: const Color(0xFF718096),
              ),
            ),
            SizedBox(height: context.mh * 0.02),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: designs.length,
                itemBuilder: (context, index) {
                  final design = designs[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: context.mh * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image with favorite button overlay
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              child: Image.asset(
                                design["image"]!,
                                height: context.mh * 0.18,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),

                        // Content
                        Padding(
                          padding: EdgeInsets.all(context.mh * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: context.mw * 0.02,
                                      vertical: context.mh * 0.004,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEBF4FF),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Text(
                                      'Premium',
                                      style: GoogleFonts.poppins(
                                        fontSize: context.mh * 0.012,
                                        color: const Color(0xFF3A86FF),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: context.mh * 0.02,
                                  ),
                                  SizedBox(width: context.mw * 0.01),
                                  Text(
                                    '4.8',
                                    style: GoogleFonts.poppins(
                                      fontSize: context.mh * 0.014,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: context.mh * 0.01),
                              Text(
                                design["title"]!,
                                style: GoogleFonts.poppins(
                                  fontSize: context.mh * 0.018,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF2D3748),
                                ),
                              ),
                              SizedBox(height: context.mh * 0.006),
                              Text(
                                design["description"]!,
                                style: GoogleFonts.poppins(
                                  fontSize: context.mh * 0.015,
                                  color: const Color(0xFF718096),
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: context.mh * 0.015),
                              // Features row
                              Row(
                                children: [
                                  _buildFeatureItem(
                                      context, Icons.straighten, '210 m²'),
                                  SizedBox(width: context.mw * 0.03),
                                  _buildFeatureItem(context,
                                      Icons.king_bed_outlined, '4 Beds'),
                                  SizedBox(width: context.mw * 0.03),
                                  _buildFeatureItem(context,
                                      Icons.bathtub_outlined, '3 Baths'),
                                ],
                              ),
                              SizedBox(height: context.mh * 0.02),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF3A86FF),
                                  foregroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  minimumSize:
                                      Size(double.infinity, context.mh * 0.055),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    RoutesNames.designDetailScreen,
                                    arguments: {
                                      "design": design,
                                    },
                                  );
                                },
                                child: Text(
                                  "View Details",
                                  style: GoogleFonts.poppins(
                                    fontSize: context.mh * 0.016,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: context.mh * 0.018,
          color: const Color(0xFF718096),
        ),
        SizedBox(width: context.mw * 0.01),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.013,
            color: const Color(0xFF718096),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
