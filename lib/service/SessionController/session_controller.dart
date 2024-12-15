import 'dart:convert';
import 'dart:developer';

import 'package:digital_ghar/Model/UserModel/user_model.dart';
import 'package:digital_ghar/service/LocalStorage/local_storage.dart';

class SessionController {
  static final SessionController _instance = SessionController._internal();

  final LocalStorage localStorage = LocalStorage();
  UserModel userModel = UserModel();
  bool? isLogin;

  // Private constructor
  SessionController._internal() {
    isLogin = false;
  }

  factory SessionController() {
    return _instance;
  }

  // save user in preferences
  Future<void> saveUserInPrefrences(dynamic user, userId) async {
    await localStorage.setValue('isLogin', 'true');
    await localStorage.setValue('token', jsonEncode(user));
    await localStorage.setValue('id', userId);
    log(userModel.data?.id.toString() ?? "");
  }

  // get user from preferences
  Future<void> getUserFromPrefrences() async {
    try {
      var data = await localStorage.readValue('token');
      var isLogin = await localStorage.readValue('isLogin');
      if (data != null) {
        SessionController().userModel = UserModel.fromJson(jsonDecode(data));
      }
      log(data);
      SessionController().isLogin = isLogin == "true" ? true : false;
    } catch (e) {
      log(e.toString());
    }
  }

  // LogOut User
  Future<void> logout() async {
    try {
      await localStorage.clearValue('isLogin');
      await localStorage.clearValue('token');
      await localStorage.clearValue('id');
      SessionController().isLogin = false;
      SessionController().userModel = UserModel();
      log('User logged out successfully');
    } catch (e) {
      log(e.toString());
    }
  }
}
