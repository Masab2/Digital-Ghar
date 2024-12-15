import 'package:flutter/material.dart';

class AuthTextFormFeildComp extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyBoardtype;
  final IconData icon;
  final bool? obscuretext;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final String? Function(String)? onFeildSubmitted;
  final String? Function(String)? onChanged;
  const AuthTextFormFeildComp({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyBoardtype,
    required this.icon,
    this.obscuretext,
    this.suffixIcon,
    this.validator,
    this.onFeildSubmitted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext ?? false,
      controller: controller,
      keyboardType: keyBoardtype,
      validator: validator,
      onFieldSubmitted: onFeildSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(icon),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}