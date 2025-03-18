import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';

class DesignDetailView extends StatefulWidget {
  final Map<String, String> design;

  const DesignDetailView({super.key, required this.design});

  @override
  State<DesignDetailView> createState() => _DesignDetailViewState();
}

class _DesignDetailViewState extends State<DesignDetailView> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.design["title"]!,
          style: GoogleFonts.poppins(
            fontSize: context.mh * 0.022,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Flutter3DViewer(
              src: 'assets/3dModels/villa.glb',
            )
          ),
          Padding(
            padding: EdgeInsets.all(context.mh * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.design["title"]!,
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.025,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: context.mh * 0.01),
                Text(
                  widget.design["description"]!,
                  style: GoogleFonts.poppins(
                    fontSize: context.mh * 0.018,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
