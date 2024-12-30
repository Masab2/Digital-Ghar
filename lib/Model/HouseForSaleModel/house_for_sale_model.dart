// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'house_for_sale_model.freezed.dart';
part 'house_for_sale_model.g.dart';

@freezed
class HouseForSaleModel with _$HouseForSaleModel {
  factory HouseForSaleModel({
    @JsonKey(name: "Status") String? status,
    @JsonKey(name: "data") List<HouseForSaleData>? data,
  }) = _HouseForSaleModel;

  factory HouseForSaleModel.fromJson(Map<String, dynamic> json) =>
      _$HouseForSaleModelFromJson(json);
}

@freezed
class HouseForSaleData with _$HouseForSaleData {
  factory HouseForSaleData({
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "title") @Default("") String title,
    @JsonKey(name: "description") @Default("") String description,
    @JsonKey(name: "price") @Default(0) int price,
    @JsonKey(name: "location") @Default("") String location,
    @JsonKey(name: "image") @Default("") String image,
    @JsonKey(name: "category") @Default("") String category,
    @JsonKey(name: "date") @Default("") String date,
  }) = _HouseForSaleData;

  factory HouseForSaleData.fromJson(Map<String, dynamic> json) =>
      _$HouseForSaleDataFromJson(json);
}
