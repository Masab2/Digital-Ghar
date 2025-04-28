import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'contractor_stats_comp_widget.dart';
import 'welcome_header_widget.dart';

class ContractorDashboardBody extends StatelessWidget {
  const ContractorDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(context.mw * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeHeader(),
            0.03.ph(context),
            const ContractorQuotationsWidget(),
          ],
        ),
      ),
    );
  }
}

class PendingQuotationModel {
  final String id;
  final String userName;
  final String houseSize;
  final String requirements;
  final String status;
  final DateTime date;
  final String userId;

  PendingQuotationModel({
    required this.id,
    required this.userName,
    required this.houseSize,
    required this.requirements,
    required this.status,
    required this.date,
    required this.userId,
  });
}

class ContractorQuotationsWidget extends StatelessWidget {
  const ContractorQuotationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // This would be replaced with actual API data
    final List<PendingQuotationModel> pendingQuotations = [
      PendingQuotationModel(
        id: '1',
        userName: 'John Doe',
        houseSize: '5 Marla',
        requirements:
            'Need a complete renovation of my kitchen with modern design and appliances.',
        status: 'pending',
        date: DateTime.now().subtract(const Duration(days: 2)),
        userId: 'user123',
      ),
      PendingQuotationModel(
        id: '2',
        userName: 'Sarah Smith',
        houseSize: '10 Marla',
        requirements:
            'Looking for full house painting service with premium quality paints.',
        status: 'pending',
        date: DateTime.now().subtract(const Duration(days: 1)),
        userId: 'user456',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pending Quotation Requests',
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.018,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            TextButton(
              onPressed: () {
                // Navigate to view all pending requests
              },
              child: Text(
                'View All',
                style: GoogleFonts.poppins(
                  fontSize: context.mh * 0.016,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blueColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: context.mh * 0.01),
        pendingQuotations.isEmpty
            ? _buildEmptyState(context)
            : ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pendingQuotations.length,
                itemBuilder: (context, index) {
                  return _buildQuotationRequestCard(
                      context, pendingQuotations[index]);
                },
              ),
      ],
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: context.mh * 0.04),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            IconlyLight.document,
            size: context.mh * 0.05,
            color: Colors.grey.shade400,
          ),
          SizedBox(height: context.mh * 0.01),
          Text(
            'No pending quotation requests',
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.016,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuotationRequestCard(
      BuildContext context, PendingQuotationModel quotation) {
    return Container(
      margin: EdgeInsets.only(bottom: context.mh * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: EdgeInsets.all(context.mw * 0.04),
            decoration: BoxDecoration(
              color: AppColor.blueColor.withOpacity(0.05),
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(context.mw * 0.02),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        IconlyLight.profile,
                        size: context.mh * 0.022,
                        color: AppColor.blueColor,
                      ),
                    ),
                    SizedBox(width: context.mw * 0.02),
                    Text(
                      quotation.userName,
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.016,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  DateFormat('dd MMM, yyyy').format(quotation.date),
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.013,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),

          // Details
          Padding(
            padding: EdgeInsets.all(context.mw * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailRow(context, 'House Size:', quotation.houseSize,
                    IconlyLight.home),
                SizedBox(height: context.mh * 0.015),
                Text(
                  'Requirements:',
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.015,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade700,
                  ),
                ),
                SizedBox(height: context.mh * 0.005),
                Text(
                  quotation.requirements,
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.014,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: context.mh * 0.02),

                // Quote form
                Container(
                  padding: EdgeInsets.all(context.mw * 0.03),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: _buildQuoteForm(context, quotation.id),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(
      BuildContext context, String label, String value, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: context.mh * 0.02,
          color: AppColor.blueColor,
        ),
        SizedBox(width: context.mw * 0.02),
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.014,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade700,
          ),
        ),
        SizedBox(width: context.mw * 0.02),
        Text(
          value,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.014,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _buildQuoteForm(BuildContext context, String quotationId) {
    return StatefulBuilder(
      builder: (context, setState) {
        final TextEditingController costController = TextEditingController();
        final TextEditingController timeController = TextEditingController();
        final TextEditingController notesController = TextEditingController();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send Your Quote',
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.016,
                fontWeight: FontWeight.w600,
                color: AppColor.blueColor,
              ),
            ),
            SizedBox(height: context.mh * 0.015),

            // Cost input
            TextField(
              controller: costController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Estimated Cost (Rs)',
                prefixIcon: Icon(
                  IconlyLight.wallet,
                  size: context.mh * 0.02,
                  color: AppColor.greyColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: context.mh * 0.01,
                  horizontal: context.mw * 0.03,
                ),
              ),
            ),
            SizedBox(height: context.mh * 0.015),

            // Time input
            TextField(
              controller: timeController,
              decoration: InputDecoration(
                labelText: 'Estimated Time (in days)',
                prefixIcon: Icon(
                  IconlyLight.time_circle,
                  size: context.mh * 0.02,
                  color: AppColor.greyColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: context.mh * 0.01,
                  horizontal: context.mw * 0.03,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: context.mh * 0.015),

            // Notes input
            TextField(
              controller: notesController,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: 'Additional Notes (Optional)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                contentPadding: EdgeInsets.all(context.mw * 0.03),
              ),
            ),
            SizedBox(height: context.mh * 0.02),

            // Submit button
            RoundBtn(
              text: "Submit Quote",
              onTap: () {},
              radius: 8,
            ),
          ],
        );
      },
    );
  }
}
