// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_contractor_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddContractorProfileModelImpl _$$AddContractorProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddContractorProfileModelImpl(
      status: json['message'] as String?,
      data: json['contractor'] == null
          ? null
          : ContractorData.fromJson(json['contractor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddContractorProfileModelImplToJson(
        _$AddContractorProfileModelImpl instance) =>
    <String, dynamic>{
      'message': instance.status,
      'contractor': instance.data,
    };

_$ContractorDataImpl _$$ContractorDataImplFromJson(Map<String, dynamic> json) =>
    _$ContractorDataImpl(
      name: json['name'] as String? ?? "",
      email: json['email'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      address: json['address'] as String? ?? "",
      company: json['company'] as String? ?? "",
      regNo: json['registrationNumber'] as String? ?? "",
      role: json['role'] as String? ?? "",
      projectsCompleted: (json['projectsCompleted'] as num?)?.toInt() ?? 0,
      ratings: json['ratings'] == null
          ? null
          : ContractorRatings.fromJson(json['ratings'] as Map<String, dynamic>),
      contractorPermissions: json['permissions'] == null
          ? null
          : ContractorPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool? ?? false,
      contractorId: json['_id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
    );

Map<String, dynamic> _$$ContractorDataImplToJson(
        _$ContractorDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'company': instance.company,
      'registrationNumber': instance.regNo,
      'role': instance.role,
      'projectsCompleted': instance.projectsCompleted,
      'ratings': instance.ratings,
      'permissions': instance.contractorPermissions,
      'isActive': instance.isActive,
      '_id': instance.contractorId,
      'createdAt': instance.createdAt,
    };

_$ContractorRatingsImpl _$$ContractorRatingsImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractorRatingsImpl(
      rating: (json['totalRatings'] as num?)?.toDouble() ?? 0.0,
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$ContractorRatingsImplToJson(
        _$ContractorRatingsImpl instance) =>
    <String, dynamic>{
      'totalRatings': instance.rating,
      'averageRating': instance.averageRating,
    };

_$ContractorPermissionsImpl _$$ContractorPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractorPermissionsImpl(
      canManageTeam: json['canManageTeam'] as bool? ?? false,
      canEditProfile: json['canEditProfile'] as bool? ?? false,
    );

Map<String, dynamic> _$$ContractorPermissionsImplToJson(
        _$ContractorPermissionsImpl instance) =>
    <String, dynamic>{
      'canManageTeam': instance.canManageTeam,
      'canEditProfile': instance.canEditProfile,
    };
