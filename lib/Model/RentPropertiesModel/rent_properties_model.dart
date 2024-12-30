// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'rent_properties_model.freezed.dart';
part 'rent_properties_model.g.dart';

@freezed
class RentPropertiesModel with _$RentPropertiesModel {
  factory RentPropertiesModel({
    @JsonKey(name: "Status") String? status,
    @JsonKey(name: "data") List<RentPropertiesData>? data,
  }) = _RentPropertiesModel;

  factory RentPropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$RentPropertiesModelFromJson(json);
}

@freezed
class RentPropertiesData with _$RentPropertiesData {
  factory RentPropertiesData({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "title") @Default("") String title,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "price") @Default(0) int price,
    @JsonKey(name: "location") @Default("") String location,
    @JsonKey(name: "image") @Default("") String image,
    @JsonKey(name: "category") @Default("") String category,
    @JsonKey(name: "propertyType") @Default("") String propertyType,
    @JsonKey(name: "contact") @Default("") String contact,
    @JsonKey(name: "date") @Default("") String date,
  }) = _RentPropertiesData;

  factory RentPropertiesData.fromJson(Map<String, dynamic> json) =>
      _$RentPropertiesDataFromJson(json);
}
