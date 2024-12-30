// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      status: json['Status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'data': instance.data,
    };

_$CategoryListImpl _$$CategoryListImplFromJson(Map<String, dynamic> json) =>
    _$CategoryListImpl(
      id: json['_id'] as String? ?? "",
      name: json['categoryName'] as String? ?? "",
    );

Map<String, dynamic> _$$CategoryListImplToJson(_$CategoryListImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'categoryName': instance.name,
    };
