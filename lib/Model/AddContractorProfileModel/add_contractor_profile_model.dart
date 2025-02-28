import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_contractor_profile_model.freezed.dart';
part 'add_contractor_profile_model.g.dart';

@freezed
class AddContractorProfileModel with _$AddContractorProfileModel {
  factory AddContractorProfileModel({
    @JsonKey(name: "message") String? status,
    @JsonKey(name: "contractor") ContractorData? data,
  }) = _AddContractorProfileModel;

  factory AddContractorProfileModel.fromJson(Map<String, dynamic> json) =>
      _$AddContractorProfileModelFromJson(json);
}

@freezed
class ContractorData with _$ContractorData {
  factory ContractorData({
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "email") @Default("") String email,
    @JsonKey(name: "phone") @Default("") String phone,
    @JsonKey(name: "address") @Default("") String address,
    @JsonKey(name: "company") @Default("") String company,
    @JsonKey(name: "registrationNumber") @Default("") String regNo,
    @JsonKey(name: "role") @Default("") String role,
    @JsonKey(name: "projectsCompleted") @Default(0) int projectsCompleted,
    @JsonKey(name: "ratings") ContractorRatings? ratings,
    @JsonKey(name: "permissions") ContractorPermissions? contractorPermissions,
    @JsonKey(name: "isActive") @Default(false) bool isActive,
    @JsonKey(name: "_id") @Default("") String contractorId,
    @JsonKey(name: "createdAt") @Default("") String createdAt,
  }) = _ContractorData;

  factory ContractorData.fromJson(Map<String, dynamic> json) =>
      _$ContractorDataFromJson(json);
}

@freezed
class ContractorRatings with _$ContractorRatings {
  factory ContractorRatings({
    @JsonKey(name: "totalRatings") @Default(0.0) double rating,
    @JsonKey(name: "averageRating") @Default(0.0) double averageRating,
  }) = _ContractorRatings;

  factory ContractorRatings.fromJson(Map<String, dynamic> json) =>
      _$ContractorRatingsFromJson(json);
}

@freezed
class ContractorPermissions with _$ContractorPermissions {
  factory ContractorPermissions({
    @JsonKey(name: "canManageTeam") @Default(false) bool canManageTeam,
    @JsonKey(name: "canEditProfile") @Default(false) bool canEditProfile,
  }) = _ContractorPermissions;

  factory ContractorPermissions.fromJson(Map<String, dynamic> json) =>
      _$ContractorPermissionsFromJson(json);
}
