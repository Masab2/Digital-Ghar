// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      status: json['Status'] as bool?,
      data: json['data'] == null
          ? null
          : UserDataList.fromJson(json['data'] as Map<String, dynamic>),
      message: json['Success'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'data': instance.data,
      'Success': instance.message,
      'token': instance.token,
    };

_$UserDataListImpl _$$UserDataListImplFromJson(Map<String, dynamic> json) =>
    _$UserDataListImpl(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      createdDate: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$UserDataListImplToJson(_$UserDataListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'createdAt': instance.createdDate,
    };
