import 'package:digital_ghar/config/components/RoundBtn/round_btn.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/viewModel/AuthViewModel/login_view_Model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginBtnWidget extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const LoginBtnWidget(
      {super.key,
      required this.emailController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, value, child) {
        return RoundBtn(
          text: "Login",
          onTap: () {
            if (emailController.text.isEmpty ||
                passwordController.text.isEmpty) {
              Utils.showCustomSnackBar(
                context,
                "Please Enter The Data",
                "",
              );
            } else {
              value.loginApi(emailController, passwordController, context);
            }
          },
          loading: value.isLoading,
        );
      },
    );
  }
}
