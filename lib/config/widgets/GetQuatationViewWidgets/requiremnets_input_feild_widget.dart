import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequirementsInputField extends StatelessWidget {
  final TextEditingController descriptionController;

  const RequirementsInputField({
    super.key,
    required this.descriptionController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Describe what you want in your house",
            style: GoogleFonts.poppins(
              fontSize: context.mh * 0.014,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF4A5568),
            ),
          ),
          0.01.ph(context),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.mh * 0.01),
              border: Border.all(color: const Color(0xFFE2E8F0)),
            ),
            child: TextField(
              controller: descriptionController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText:
                    "e.g. 4 bedrooms, 3 bathrooms, kitchen with an island, home office, garden space...",
                hintStyle: GoogleFonts.poppins(
                  fontSize: context.mh * 0.014,
                  color: const Color(0xFFA0AEC0),
                ),
                contentPadding: const EdgeInsets.all(16),
                border: InputBorder.none,
              ),
              style: GoogleFonts.poppins(
                fontSize: context.mh * 0.014,
                color: const Color(0xFF2D3748),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
