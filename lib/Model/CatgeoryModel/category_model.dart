// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @JsonKey(name: "Status") String? status,
    @JsonKey(name: "data") List<CategoryList>? data,
  }) = _CategoryModel;
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CategoryList with _$CategoryList {
  factory CategoryList({
    @JsonKey(name: "_id") @Default("") String? id,
    @JsonKey(name: "categoryName") @Default("") String? name,
  }) = _CategoryList;
  factory CategoryList.fromJson(Map<String, dynamic> json) =>
      _$CategoryListFromJson(json);
}