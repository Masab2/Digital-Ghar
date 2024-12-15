// ignore_for_file: file_names

import 'dart:developer';

import 'package:digital_ghar/Repository/AuthRepo/auth_repo.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/main.dart';
import 'package:digital_ghar/service/SessionController/session_controller.dart';
import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier {
  final AuthRepo _loginRepo;

  LoginViewModel() : _loginRepo = getIt<AuthRepo>();
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
        Utils.showCustomSnackBar(context, "Login Successfull", "");
      },
    ).onError(
      (error, stackTrace) {
        setLoading(false);
        log(error.toString());
      },
    );
  }
}
