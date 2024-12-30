// ignore_for_file: deprecated_member_use
import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';

class CustomizedFeilds extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final String? Function(String)? onChanged;
  final bool? obscuretext;
  final TextInputType? keyBoardtype;
  final TextEditingController? controller;
  const CustomizedFeilds({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.onChanged,
    this.obscuretext,
    this.keyBoardtype,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.greyColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: TextFormField(
            obscureText: obscuretext ?? false,
            controller: controller,
            keyboardType: keyBoardtype,
            onChanged: onChanged,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: context.mh * 0.016,
              ),
              border: InputBorder.none,
              hintText: hintText,
              prefixIcon: Icon(prefixIcon),
            ),
          ),
        ),
      ),
    );
  }
}
