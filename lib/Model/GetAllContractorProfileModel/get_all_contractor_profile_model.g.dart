// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_contractor_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllContractorProfileModelImpl _$$GetAllContractorProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllContractorProfileModelImpl(
      profiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) =>
              ContractorProfileModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetAllContractorProfileModelImplToJson(
        _$GetAllContractorProfileModelImpl instance) =>
    <String, dynamic>{
      'profiles': instance.profiles,
    };

_$ContractorProfileModelDataImpl _$$ContractorProfileModelDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractorProfileModelDataImpl(
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
          : GetContractorRatings.fromJson(
              json['ratings'] as Map<String, dynamic>),
      contractorPermissions: json['permissions'] == null
          ? null
          : GetContractorPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool? ?? false,
      contractorId: json['_id'] as String? ?? "",
      createdAt: json['createdAt'] as String? ?? "",
    );

Map<String, dynamic> _$$ContractorProfileModelDataImplToJson(
        _$ContractorProfileModelDataImpl instance) =>
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

_$GetContractorRatingsImpl _$$GetContractorRatingsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetContractorRatingsImpl(
      rating: (json['totalRatings'] as num?)?.toDouble() ?? 0.0,
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$GetContractorRatingsImplToJson(
        _$GetContractorRatingsImpl instance) =>
    <String, dynamic>{
      'totalRatings': instance.rating,
      'averageRating': instance.averageRating,
    };

_$GetContractorPermissionsImpl _$$GetContractorPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetContractorPermissionsImpl(
      canManageTeam: json['canManageTeam'] as bool? ?? false,
      canEditProfile: json['canEditProfile'] as bool? ?? false,
    );

Map<String, dynamic> _$$GetContractorPermissionsImplToJson(
        _$GetContractorPermissionsImpl instance) =>
    <String, dynamic>{
      'canManageTeam': instance.canManageTeam,
      'canEditProfile': instance.canEditProfile,
    };
