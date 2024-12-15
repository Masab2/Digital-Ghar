// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
@freezed
class UserModel with _$UserModel {
  factory UserModel({
    @JsonKey(name: 'Status') bool? status,
    @JsonKey(name: 'data') UserDataList? data,
    @JsonKey(name: 'Success') String? message,
    @JsonKey(name: 'token') String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserDataList with _$UserDataList {
  factory UserDataList({
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'gender') @Default('') String gender,
    @JsonKey(name: 'createdAt') @Default('') String createdDate,
  }) = _UserDataList;

  factory UserDataList.fromJson(Map<String, dynamic> json) =>
      _$UserDataListFromJson(json);
}