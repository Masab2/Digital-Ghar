// ignore_for_file: file_names, use_build_context_synchronously

import 'dart:developer';
import 'package:digital_ghar/Repository/AuthRepo/auth_http_repo.dart';
import 'package:digital_ghar/Repository/AuthRepo/auth_repo.dart';
import 'package:digital_ghar/config/Global/gobal.dart';
import 'package:digital_ghar/config/routes/routes_names.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/service/SessionController/session_controller.dart';
import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier {
  final AuthRepo _loginRepo = AuthHttpRepo();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void loginApi(TextEditingController emailController,
      TextEditingController passwordController, BuildContext context) {
    setLoading(true);

    Map<String, dynamic> data = {
      "email": emailController.text,
      "password": passwordController.text,
    };
    _loginRepo.loginApi(data).then(
      (value) async {
        setLoading(false);
        await SessionController()
            .saveUserInPrefrences(value, value.data?.id ?? "");
        await SessionController().getUserFromPrefrences();
        userName = value.data?.name ?? "";
        email = value.data?.email ?? "";
        Navigator.pushReplacementNamed(context, RoutesNames.bottomNavBarView);
      },
    ).onError(
      (error, stackTrace) {
        setLoading(false);
        log(error.toString());
        Utils.showCustomSnackBar(context, error.toString(), "Error");
      },
    );
  }
}
