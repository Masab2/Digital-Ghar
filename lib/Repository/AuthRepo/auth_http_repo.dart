import 'dart:developer';

import 'package:digital_ghar/Model/UserModel/user_model.dart';
import 'package:digital_ghar/config/app/app_url.dart';
import 'package:digital_ghar/data/Network/network_api_service.dart';

import 'auth_repo.dart';

class AuthHttpRepo implements AuthRepo {
  final _api = NetworkApiService();
  @override
  Future<UserModel> loginApi(dynamic data) async {
    final response = await _api.getPostApiResponse(AppUrl.loginUrl, data, false);
    UserModel userModel = UserModel.fromJson(response);
    log(userModel.data!.email.toString());
    return userModel;
  }

  @override
  Future registerApi(data) async {
    final response = await _api.getPostApiResponse(AppUrl.registerUrl, data, false);
    return response;
  }
}
