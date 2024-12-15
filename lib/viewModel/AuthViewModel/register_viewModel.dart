import 'package:digital_ghar/Repository/AuthRepo/auth_repo.dart';
import 'package:digital_ghar/config/utils/utils.dart';
import 'package:digital_ghar/main.dart';
import 'package:flutter/material.dart';

class RegisterViewModel with ChangeNotifier {
  final AuthRepo _registerRepo;

  RegisterViewModel() : _registerRepo = getIt<AuthRepo>();

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void registerApi(TextEditingController name, TextEditingController email,
      TextEditingController password, BuildContext context) {
    setLoading(true);
    Map<String, dynamic> data = {
      "name": name.text,
      "email": email.text,
      "password": password.text,
    };
    _registerRepo.registerApi(data).then(
      (value) {
        setLoading(false);
        
        Navigator.pop(context);
      },
    ).onError(
      (error, stackTrace) {
        setLoading(false);
        Utils.showCustomSnackBar(
          context,
          error.toString(),
          "",
        );
      },
    );
  }
}
