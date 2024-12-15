import 'package:digital_ghar/config/components/TextFormFeilds/auth_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class LoginPasswordInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final Widget suffixIcon;
  final bool obsecurevalue;
  const LoginPasswordInputWidget(
      {super.key,
      required this.controller,
      required this.suffixIcon,
      required this.obsecurevalue});

  @override
  Widget build(BuildContext context) {
    return AuthTextFormFeildComp(
      controller: controller,
      hintText: "Password",
      icon: IconlyBold.password,
      suffixIcon: suffixIcon,
      keyBoardtype: TextInputType.visiblePassword,
      obscuretext: obsecurevalue,
    );
  }
}
