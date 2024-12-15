import 'package:digital_ghar/config/components/TextFormFeilds/auth_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class RegisterEmailWidget extends StatelessWidget {
  final TextEditingController emailController;
  const RegisterEmailWidget({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return AuthTextFormFeildComp(
      controller: emailController,
      hintText: "Email",
      icon: IconlyBold.message,
    );
  }
}