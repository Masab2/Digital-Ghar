// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectRequestModel _$ProjectRequestModelFromJson(Map<String, dynamic> json) {
  return _ProjectRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectRequestModel {
  @JsonKey(name: "message")
  List<ProjectRequestList>? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectRequestModelCopyWith<ProjectRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectRequestModelCopyWith<$Res> {
  factory $ProjectRequestModelCopyWith(
          ProjectRequestModel value, $Res Function(ProjectRequestModel) then) =
      _$ProjectRequestModelCopyWithImpl<$Res, ProjectRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "message") List<ProjectRequestList>? message});
}

/// @nodoc
class _$ProjectRequestModelCopyWithImpl<$Res, $Val extends ProjectRequestModel>
    implements $ProjectRequestModelCopyWith<$Res> {
  _$ProjectRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ProjectRequestList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectRequestModelImplCopyWith<$Res>
    implements $ProjectRequestModelCopyWith<$Res> {
  factory _$$ProjectRequestModelImplCopyWith(_$ProjectRequestModelImpl value,
          $Res Function(_$ProjectRequestModelImpl) then) =
      __$$ProjectRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "message") List<ProjectRequestList>? message});
}

/// @nodoc
class __$$ProjectRequestModelImplCopyWithImpl<$Res>
    extends _$ProjectRequestModelCopyWithImpl<$Res, _$ProjectRequestModelImpl>
    implements _$$ProjectRequestModelImplCopyWith<$Res> {
  __$$ProjectRequestModelImplCopyWithImpl(_$ProjectRequestModelImpl _value,
      $Res Function(_$ProjectRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ProjectRequestModelImpl(
      message: freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<ProjectRequestList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectRequestModelImpl implements _ProjectRequestModel {
  _$ProjectRequestModelImpl(
      {@JsonKey(name: "message") final List<ProjectRequestList>? message})
      : _message = message;

  factory _$ProjectRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectRequestModelImplFromJson(json);

  final List<ProjectRequestList>? _message;
  @override
  @JsonKey(name: "message")
  List<ProjectRequestList>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProjectRequestModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectRequestModelImpl &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectRequestModelImplCopyWith<_$ProjectRequestModelImpl> get copyWith =>
      __$$ProjectRequestModelImplCopyWithImpl<_$ProjectRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ProjectRequestModel implements ProjectRequestModel {
  factory _ProjectRequestModel(
          {@JsonKey(name: "message") final List<ProjectRequestList>? message}) =
      _$ProjectRequestModelImpl;

  factory _ProjectRequestModel.fromJson(Map<String, dynamic> json) =
      _$ProjectRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  List<ProjectRequestList>? get message;
  @override
  @JsonKey(ignore: true)
  _$$ProjectRequestModelImplCopyWith<_$ProjectRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectRequestList _$ProjectRequestListFromJson(Map<String, dynamic> json) {
  return _ProjectRequestList.fromJson(json);
}

/// @nodoc
mixin _$ProjectRequestList {
  @JsonKey(name: "estimatedCost")
  double? get estimatedCost => throw _privateConstructorUsedError;
  @JsonKey(name: "timeTaken")
  String? get timeTaken => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalNotes")
  String? get additionalNotes => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "houseSize")
  String get houseSize => throw _privateConstructorUsedError;
  @JsonKey(name: "requirements")
  String get requirements => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "contractorId")
  String get contractorId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectRequestListCopyWith<ProjectRequestList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectRequestListCopyWith<$Res> {
  factory $ProjectRequestListCopyWith(
          ProjectRequestList value, $Res Function(ProjectRequestList) then) =
      _$ProjectRequestListCopyWithImpl<$Res, ProjectRequestList>;
  @useResult
  $Res call(
      {@JsonKey(name: "estimatedCost") double? estimatedCost,
      @JsonKey(name: "timeTaken") String? timeTaken,
      @JsonKey(name: "additionalNotes") String? additionalNotes,
      @JsonKey(name: "_id") String id,
      @JsonKey(name: "houseSize") String houseSize,
      @JsonKey(name: "requirements") String requirements,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "contractorId") String contractorId,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class _$ProjectRequestListCopyWithImpl<$Res, $Val extends ProjectRequestList>
    implements $ProjectRequestListCopyWith<$Res> {
  _$ProjectRequestListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estimatedCost = freezed,
    Object? timeTaken = freezed,
    Object? additionalNotes = freezed,
    Object? id = null,
    Object? houseSize = null,
    Object? requirements = null,
    Object? userId = null,
    Object? contractorId = null,
    Object? status = null,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      timeTaken: freezed == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalNotes: freezed == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      houseSize: null == houseSize
          ? _value.houseSize
          : houseSize // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectRequestListImplCopyWith<$Res>
    implements $ProjectRequestListCopyWith<$Res> {
  factory _$$ProjectRequestListImplCopyWith(_$ProjectRequestListImpl value,
          $Res Function(_$ProjectRequestListImpl) then) =
      __$$ProjectRequestListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "estimatedCost") double? estimatedCost,
      @JsonKey(name: "timeTaken") String? timeTaken,
      @JsonKey(name: "additionalNotes") String? additionalNotes,
      @JsonKey(name: "_id") String id,
      @JsonKey(name: "houseSize") String houseSize,
      @JsonKey(name: "requirements") String requirements,
      @JsonKey(name: "userId") String userId,
      @JsonKey(name: "contractorId") String contractorId,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "__v") int? v});
}

/// @nodoc
class __$$ProjectRequestListImplCopyWithImpl<$Res>
    extends _$ProjectRequestListCopyWithImpl<$Res, _$ProjectRequestListImpl>
    implements _$$ProjectRequestListImplCopyWith<$Res> {
  __$$ProjectRequestListImplCopyWithImpl(_$ProjectRequestListImpl _value,
      $Res Function(_$ProjectRequestListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? estimatedCost = freezed,
    Object? timeTaken = freezed,
    Object? additionalNotes = freezed,
    Object? id = null,
    Object? houseSize = null,
    Object? requirements = null,
    Object? userId = null,
    Object? contractorId = null,
    Object? status = null,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$ProjectRequestListImpl(
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as double?,
      timeTaken: freezed == timeTaken
          ? _value.timeTaken
          : timeTaken // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalNotes: freezed == additionalNotes
          ? _value.additionalNotes
          : additionalNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      houseSize: null == houseSize
          ? _value.houseSize
          : houseSize // ignore: cast_nullable_to_non_nullable
              as String,
      requirements: null == requirements
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectRequestListImpl implements _ProjectRequestList {
  _$ProjectRequestListImpl(
      {@JsonKey(name: "estimatedCost") this.estimatedCost,
      @JsonKey(name: "timeTaken") this.timeTaken,
      @JsonKey(name: "additionalNotes") this.additionalNotes,
      @JsonKey(name: "_id") this.id = "",
      @JsonKey(name: "houseSize") this.houseSize = "",
      @JsonKey(name: "requirements") this.requirements = "",
      @JsonKey(name: "userId") this.userId = "",
      @JsonKey(name: "contractorId") this.contractorId = "",
      @JsonKey(name: "status") this.status = "",
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "__v") this.v});

  factory _$ProjectRequestListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectRequestListImplFromJson(json);

  @override
  @JsonKey(name: "estimatedCost")
  final double? estimatedCost;
  @override
  @JsonKey(name: "timeTaken")
  final String? timeTaken;
  @override
  @JsonKey(name: "additionalNotes")
  final String? additionalNotes;
  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "houseSize")
  final String houseSize;
  @override
  @JsonKey(name: "requirements")
  final String requirements;
  @override
  @JsonKey(name: "userId")
  final String userId;
  @override
  @JsonKey(name: "contractorId")
  final String contractorId;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "date")
  final DateTime? date;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "__v")
  final int? v;

  @override
  String toString() {
    return 'ProjectRequestList(estimatedCost: $estimatedCost, timeTaken: $timeTaken, additionalNotes: $additionalNotes, id: $id, houseSize: $houseSize, requirements: $requirements, userId: $userId, contractorId: $contractorId, status: $status, date: $date, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectRequestListImpl &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.timeTaken, timeTaken) ||
                other.timeTaken == timeTaken) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.houseSize, houseSize) ||
                other.houseSize == houseSize) &&
            (identical(other.requirements, requirements) ||
                other.requirements == requirements) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.contractorId, contractorId) ||
                other.contractorId == contractorId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      estimatedCost,
      timeTaken,
      additionalNotes,
      id,
      houseSize,
      requirements,
      userId,
      contractorId,
      status,
      date,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectRequestListImplCopyWith<_$ProjectRequestListImpl> get copyWith =>
      __$$ProjectRequestListImplCopyWithImpl<_$ProjectRequestListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectRequestListImplToJson(
      this,
    );
  }
}

abstract class _ProjectRequestList implements ProjectRequestList {
  factory _ProjectRequestList(
      {@JsonKey(name: "estimatedCost") final double? estimatedCost,
      @JsonKey(name: "timeTaken") final String? timeTaken,
      @JsonKey(name: "additionalNotes") final String? additionalNotes,
      @JsonKey(name: "_id") final String id,
      @JsonKey(name: "houseSize") final String houseSize,
      @JsonKey(name: "requirements") final String requirements,
      @JsonKey(name: "userId") final String userId,
      @JsonKey(name: "contractorId") final String contractorId,
      @JsonKey(name: "status") final String status,
      @JsonKey(name: "date") final DateTime? date,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "__v") final int? v}) = _$ProjectRequestListImpl;

  factory _ProjectRequestList.fromJson(Map<String, dynamic> json) =
      _$ProjectRequestListImpl.fromJson;

  @override
  @JsonKey(name: "estimatedCost")
  double? get estimatedCost;
  @override
  @JsonKey(name: "timeTaken")
  String? get timeTaken;
  @override
  @JsonKey(name: "additionalNotes")
  String? get additionalNotes;
  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "houseSize")
  String get houseSize;
  @override
  @JsonKey(name: "requirements")
  String get requirements;
  @override
  @JsonKey(name: "userId")
  String get userId;
  @override
  @JsonKey(name: "contractorId")
  String get contractorId;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "__v")
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$ProjectRequestListImplCopyWith<_$ProjectRequestListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
