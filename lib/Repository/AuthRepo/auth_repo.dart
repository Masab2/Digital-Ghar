import 'package:digital_ghar/Model/UserModel/user_model.dart';

abstract class AuthRepo {
  Future<UserModel> loginApi(dynamic data);
  Future<dynamic> registerApi(dynamic data);
}
