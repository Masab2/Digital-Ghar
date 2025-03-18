import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContractorInfoItemWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;
  final bool isClickable;
  final VoidCallback? onTap;
  const ContractorInfoItemWidget(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.title,
      required this.value,
      this.isClickable = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Icon
        Container(
          height: context.mh * 0.04,
          width: context.mh * 0.04,
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: context.mw * 0.045,
          ),
        ),

        SizedBox(width: context.mw * 0.03),

        // Content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: context.mh * 0.014,
                  color: const Color(0xFF718096),
                ),
              ),
              SizedBox(height: context.mh * 0.005),
              isClickable
                  ? GestureDetector(
                      onTap: onTap,
                      child: Text(
                        value,
                        style: GoogleFonts.poppins(
                          fontSize: context.mh * 0.016,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blueColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  : Text(
                      value,
                      style: GoogleFonts.poppins(
                        fontSize: context.mh * 0.016,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2D3748),
                      ),
                    ),
            ],
          ),
        ),
      ],
    );
  }
}
