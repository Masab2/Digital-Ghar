import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_all_contractor_profile_model.freezed.dart';
part 'get_all_contractor_profile_model.g.dart';

@freezed
class GetAllContractorProfileModel with _$GetAllContractorProfileModel {
  factory GetAllContractorProfileModel({
    @JsonKey(name: "profiles") List<ContractorProfileModelData>? profiles,
  }) = _GetAllContractorProfileModel;

  factory GetAllContractorProfileModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllContractorProfileModelFromJson(json);
}

@freezed
class ContractorProfileModelData with _$ContractorProfileModelData {
  factory ContractorProfileModelData({
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "email") @Default("") String email,
    @JsonKey(name: "phone") @Default("") String phone,
    @JsonKey(name: "address") @Default("") String address,
    @JsonKey(name: "company") @Default("") String company,
    @JsonKey(name: "registrationNumber") @Default("") String regNo,
    @JsonKey(name: "role") @Default("") String role,
    @JsonKey(name: "projectsCompleted") @Default(0) int projectsCompleted,
    @JsonKey(name: "ratings") GetContractorRatings? ratings,
    @JsonKey(name: "permissions")
    GetContractorPermissions? contractorPermissions,
    @JsonKey(name: "isActive") @Default(false) bool isActive,
    @JsonKey(name: "_id") @Default("") String contractorId,
    @JsonKey(name: "createdAt") @Default("") String createdAt,
    @JsonKey(name: "companyLogo") @Default("") String companyLogo,
  }) = _ContractorProfileModelData;

  factory ContractorProfileModelData.fromJson(Map<String, dynamic> json) =>
      _$ContractorProfileModelDataFromJson(json);
}

@freezed
class GetContractorRatings with _$GetContractorRatings {
  factory GetContractorRatings({
    @JsonKey(name: "totalRatings") @Default(0.0) double rating,
    @JsonKey(name: "averageRating") @Default(0.0) double averageRating,
  }) = _GetContractorRatings;

  factory GetContractorRatings.fromJson(Map<String, dynamic> json) =>
      _$GetContractorRatingsFromJson(json);
}

@freezed
class GetContractorPermissions with _$GetContractorPermissions {
  factory GetContractorPermissions({
    @JsonKey(name: "canManageTeam") @Default(false) bool canManageTeam,
    @JsonKey(name: "canEditProfile") @Default(false) bool canEditProfile,
  }) = _GetContractorPermissions;

  factory GetContractorPermissions.fromJson(Map<String, dynamic> json) =>
      _$GetContractorPermissionsFromJson(json);
}
