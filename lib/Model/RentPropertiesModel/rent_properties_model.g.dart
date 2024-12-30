// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent_properties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RentPropertiesModelImpl _$$RentPropertiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RentPropertiesModelImpl(
      status: json['Status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RentPropertiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RentPropertiesModelImplToJson(
        _$RentPropertiesModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'data': instance.data,
    };

_$RentPropertiesDataImpl _$$RentPropertiesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RentPropertiesDataImpl(
      id: json['_id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      price: (json['price'] as num?)?.toInt() ?? 0,
      location: json['location'] as String? ?? "",
      image: json['image'] as String? ?? "",
      category: json['category'] as String? ?? "",
      propertyType: json['propertyType'] as String? ?? "",
      contact: json['contact'] as String? ?? "",
      date: json['date'] as String? ?? "",
    );

Map<String, dynamic> _$$RentPropertiesDataImplToJson(
        _$RentPropertiesDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'location': instance.location,
      'image': instance.image,
      'category': instance.category,
      'propertyType': instance.propertyType,
      'contact': instance.contact,
      'date': instance.date,
    };
