import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyAgentCard extends StatelessWidget {
  final String agentName;
  final String agentContact;
  const PropertyAgentCard(
      {super.key, required this.agentName, required this.agentContact});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.mw * 0.04),
      decoration: BoxDecoration(
        color: AppColor.blueColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Agent: $agentName',
                  style: GoogleFonts.poppins(fontSize: context.mh * 0.016)),
              Text('Contact: $agentContact',
                  style: GoogleFonts.poppins(fontSize: context.mh * 0.016)),
            ],
          ),
          Icon(Icons.phone, color: AppColor.blueColor, size: context.mh * 0.03),
        ],
      ),
    );
  }
}
