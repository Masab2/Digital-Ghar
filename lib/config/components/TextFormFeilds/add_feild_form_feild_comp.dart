import 'package:digital_ghar/config/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddFeildFormFeildComp extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  const AddFeildFormFeildComp(
      {super.key,
      required this.icon,
      required this.hintText,
      this.textInputType,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: AppColor.blueColor),
        hintText: hintText,
        hintStyle: GoogleFonts.aBeeZee(color: Colors.grey.shade600),
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
