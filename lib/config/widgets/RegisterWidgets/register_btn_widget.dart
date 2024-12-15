import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/viewModel/AuthViewModel/register_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterBtnWidget extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  const RegisterBtnWidget(
      {super.key,
      required this.emailController,
      required this.passwordController,
      required this.nameController});

  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterViewModel>(
      builder: (context, value, child) {
        return RoundBtn(
          text: "Create Account",
          onTap: () {
            if (emailController.text.isEmpty ||
                passwordController.text.isEmpty ||
                nameController.text.isEmpty) {
              Utils.showCustomSnackBar(
                context,
                "Please Enter The Data",
                "",
              );
            } else {
              value.registerApi(
                  nameController, emailController, passwordController, context);
            }
          },
        );
      },
    );
  }
}
