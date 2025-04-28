// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_request_model.freezed.dart';
part 'project_request_model.g.dart';

@freezed
class ProjectRequestModel with _$ProjectRequestModel {
  factory ProjectRequestModel({
    @JsonKey(name: "message") List<ProjectRequestList>? message,
  }) = _ProjectRequestModel;

  factory ProjectRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectRequestModelFromJson(json);
}

@freezed
class ProjectRequestList with _$ProjectRequestList {
  factory ProjectRequestList({
    @JsonKey(name: "estimatedCost") double? estimatedCost,
    @JsonKey(name: "timeTaken") String? timeTaken,
    @JsonKey(name: "additionalNotes") String? additionalNotes,
    @JsonKey(name: "_id") @Default("") String id,
    @JsonKey(name: "houseSize") @Default("") String houseSize,
    @JsonKey(name: "requirements") @Default("") String requirements,
    @JsonKey(name: "userId") @Default("") String userId,
    @JsonKey(name: "contractorId") @Default("") String contractorId,
    @JsonKey(name: "status") @Default("") String status,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "__v") int? v,
  }) = _ProjectRequestList;

  factory ProjectRequestList.fromJson(Map<String, dynamic> json) =>
      _$ProjectRequestListFromJson(json);
}
