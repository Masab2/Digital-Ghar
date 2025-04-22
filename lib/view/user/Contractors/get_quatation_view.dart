import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:digital_ghar/config/widgets/GetQuatationViewWidgets/get_quatation_widgets.dart';
import 'package:digital_ghar/config/widgets/GetQuatationViewWidgets/requiremnets_input_feild_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseQuotationView extends StatefulWidget {
  const HouseQuotationView({super.key});

  @override
  State<HouseQuotationView> createState() => _HouseQuotationViewState();
}

class _HouseQuotationViewState extends State<HouseQuotationView> {
  String selectedHouseType = 'Modern';
  String selectedSize = '5 Marla';
  final TextEditingController _descriptionController = TextEditingController();
  bool isPredicting = false;
  double? predictedCost;

  final List<String> houseTypes = [
    'Modern',
    'Traditional',
    'Contemporary',
    'Minimalist',
    'Colonial',
  ];

  final List<String> houseSizes = [
    '5 Marla',
    '10 Marla',
    '1 Kanal',
    '2 Kanal',
  ];

  final List<Map<String, dynamic>> houseTypeDetails = [
    {
      'type': 'Modern',
      'image': 'https://i.imgur.com/QZxfCkK.jpg',
      'description': 'Clean lines, minimal decorations, and open floor plans.',
    },
    {
      'type': 'Traditional',
      'image': 'https://i.imgur.com/HlvTYyZ.jpg',
      'description':
          'Classic architecture with ornate details and familiar layouts.',
    },
    {
      'type': 'Contemporary',
      'image': 'https://i.imgur.com/1XtZWdP.jpg',
      'description':
          'Unique designs with eco-friendly features and innovative materials.',
    },
    {
      'type': 'Minimalist',
      'image': 'https://i.imgur.com/uG3biNu.jpg',
      'description':
          'Functional spaces with simple aesthetic and efficient use of space.',
    },
    {
      'type': 'Colonial',
      'image': 'https://i.imgur.com/4kQBLYZ.jpg',
      'description':
          'Symmetrical design with classic elements and formal layouts.',
    },
  ];

  void _predictCost() {
    
  }

  @override
  Widget build(BuildContext context) {
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
                      houseSizes: houseSizes,
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
                    if (predictedCost != null) _buildPredictedCost(),
                    0.02.ph(context),
                    _buildPredictButton(),
                  ],
                ),
              ),
            ),
          ),
          RoundBtn(
            text: "Get Quotation",
            onTap: () {/* Handle quotation request */},
            radius: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildPredictButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: isPredicting ? null : _predictCost,
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

  Widget _buildPredictedCost() {
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
            "Rs. ${predictedCost!.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}",
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
