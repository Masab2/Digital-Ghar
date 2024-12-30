// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_for_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HouseForSaleModelImpl _$$HouseForSaleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HouseForSaleModelImpl(
      status: json['Status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HouseForSaleData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HouseForSaleModelImplToJson(
        _$HouseForSaleModelImpl instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'data': instance.data,
    };

_$HouseForSaleDataImpl _$$HouseForSaleDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HouseForSaleDataImpl(
      id: json['_id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      price: (json['price'] as num?)?.toInt() ?? 0,
      location: json['location'] as String? ?? "",
      image: json['image'] as String? ?? "",
      category: json['category'] as String? ?? "",
      date: json['date'] as String? ?? "",
    );

Map<String, dynamic> _$$HouseForSaleDataImplToJson(
        _$HouseForSaleDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'location': instance.location,
      'image': instance.image,
      'category': instance.category,
      'date': instance.date,
    };
