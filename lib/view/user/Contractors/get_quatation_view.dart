import 'dart:developer';

import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/widgets/GetQuatationViewWidgets/get_quatation_widgets.dart';
import 'package:digital_ghar/config/widgets/GetQuatationViewWidgets/requiremnets_input_feild_widget.dart';
import 'package:digital_ghar/viewModel/HomeQuotationViewModel/home_quotation_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HouseQuotationView extends StatefulWidget {
  final String contractorId;
  const HouseQuotationView({super.key, required this.contractorId});

  @override
  State<HouseQuotationView> createState() => _HouseQuotationViewState();
}

class _HouseQuotationViewState extends State<HouseQuotationView> {
  String selectedHouseType = 'Modern';
  String selectedSize = '5 Marla';
  final TextEditingController _descriptionController = TextEditingController();
  bool isPredicting = false;
  double? predictedCost;

  @override
  void dispose() {
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeQuotationVM = Provider.of<HomeQuotationViewModel>(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "House Quotation",
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF2D3748),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "House Size",
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.015,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF4A5568),
                      ),
                    ),
                    0.01.ph(context),
                    HouseSizeSelector(
                      selectedHouseType: selectedHouseType,
                    ),
                    0.02.ph(context),
                    Text(
                      "Your Requirements",
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.015,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF4A5568),
                      ),
                    ),
                    0.01.ph(context),
                    RequirementsInputField(
                      descriptionController: _descriptionController,
                    ),
                    0.02.ph(context),
                    if (homeQuotationVM.predictedCost != '')
                      _buildPredictedCost(homeQuotationVM),
                    0.02.ph(context),
                    _buildPredictButton(homeQuotationVM),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.mw * 0.05, vertical: context.mh * 0.02),
            child: RoundBtn(
              text: "Get Quotation",
              onTap: () {
                log(widget.contractorId);
                homeQuotationVM.addQuatationRequestApi(
                  _descriptionController.text,
                  widget.contractorId,
                  context,
                );
              },
              radius: 10,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPredictButton(HomeQuotationViewModel viewModel) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: viewModel.isPredicting
            ? null
            : () {
                viewModel.predictCostApi(_descriptionController.text, context);
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF10B981),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        icon: isPredicting
            ? const SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : const Icon(Icons.auto_awesome),
        label: Text(
          isPredicting ? "Predicting..." : "Predict Cost with AI",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildPredictedCost(HomeQuotationViewModel viewModel) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEDF2FF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF4F80FF), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "AI Cost Prediction",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF4F80FF),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Rs. ${viewModel.predictedCost} ",
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "This is an approximate cost based on your selections. Get a detailed quotation for accurate pricing.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF718096),
            ),
          ),
        ],
      ),
    );
  }
}
