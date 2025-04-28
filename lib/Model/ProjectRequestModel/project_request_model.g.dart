// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectRequestModelImpl _$$ProjectRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectRequestModelImpl(
      message: (json['message'] as List<dynamic>?)
          ?.map((e) => ProjectRequestList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectRequestModelImplToJson(
        _$ProjectRequestModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$ProjectRequestListImpl _$$ProjectRequestListImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectRequestListImpl(
      estimatedCost: (json['estimatedCost'] as num?)?.toDouble(),
      timeTaken: json['timeTaken'] as String?,
      additionalNotes: json['additionalNotes'] as String?,
      id: json['_id'] as String? ?? "",
      houseSize: json['houseSize'] as String? ?? "",
      requirements: json['requirements'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      contractorId: json['contractorId'] as String? ?? "",
      status: json['status'] as String? ?? "",
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProjectRequestListImplToJson(
        _$ProjectRequestListImpl instance) =>
    <String, dynamic>{
      'estimatedCost': instance.estimatedCost,
      'timeTaken': instance.timeTaken,
      'additionalNotes': instance.additionalNotes,
      '_id': instance.id,
      'houseSize': instance.houseSize,
      'requirements': instance.requirements,
      'userId': instance.userId,
      'contractorId': instance.contractorId,
      'status': instance.status,
      'date': instance.date?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
