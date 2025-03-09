import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';

class AddFeildFormFeildComp extends StatelessWidget {
  final IconData? icon;
  final String hintText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int? maxlines;
  const AddFeildFormFeildComp({
    super.key,
    this.icon,
    required this.hintText,
    this.textInputType,
    this.controller,
    this.validator,
    this.maxlines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon:  icon == null ? null : Icon(icon, color: AppColor.blueColor),
        filled: true,
        hintText: hintText,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColor.blueColor, width: 1.5),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: context.mh * 0.018,
          horizontal: context.mw * 0.04,
        ),
      ),
    );
  }
}
