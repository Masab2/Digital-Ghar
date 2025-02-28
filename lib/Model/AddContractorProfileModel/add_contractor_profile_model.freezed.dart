// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_contractor_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddContractorProfileModel _$AddContractorProfileModelFromJson(
    Map<String, dynamic> json) {
  return _AddContractorProfileModel.fromJson(json);
}

/// @nodoc
mixin _$AddContractorProfileModel {
  @JsonKey(name: "message")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "contractor")
  ContractorData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddContractorProfileModelCopyWith<AddContractorProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContractorProfileModelCopyWith<$Res> {
  factory $AddContractorProfileModelCopyWith(AddContractorProfileModel value,
          $Res Function(AddContractorProfileModel) then) =
      _$AddContractorProfileModelCopyWithImpl<$Res, AddContractorProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? status,
      @JsonKey(name: "contractor") ContractorData? data});

  $ContractorDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddContractorProfileModelCopyWithImpl<$Res,
        $Val extends AddContractorProfileModel>
    implements $AddContractorProfileModelCopyWith<$Res> {
  _$AddContractorProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContractorData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractorDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ContractorDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddContractorProfileModelImplCopyWith<$Res>
    implements $AddContractorProfileModelCopyWith<$Res> {
  factory _$$AddContractorProfileModelImplCopyWith(
          _$AddContractorProfileModelImpl value,
          $Res Function(_$AddContractorProfileModelImpl) then) =
      __$$AddContractorProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? status,
      @JsonKey(name: "contractor") ContractorData? data});

  @override
  $ContractorDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddContractorProfileModelImplCopyWithImpl<$Res>
    extends _$AddContractorProfileModelCopyWithImpl<$Res,
        _$AddContractorProfileModelImpl>
    implements _$$AddContractorProfileModelImplCopyWith<$Res> {
  __$$AddContractorProfileModelImplCopyWithImpl(
      _$AddContractorProfileModelImpl _value,
      $Res Function(_$AddContractorProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddContractorProfileModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContractorData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddContractorProfileModelImpl implements _AddContractorProfileModel {
  _$AddContractorProfileModelImpl(
      {@JsonKey(name: "message") this.status,
      @JsonKey(name: "contractor") this.data});

  factory _$AddContractorProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddContractorProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? status;
  @override
  @JsonKey(name: "contractor")
  final ContractorData? data;

  @override
  String toString() {
    return 'AddContractorProfileModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddContractorProfileModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddContractorProfileModelImplCopyWith<_$AddContractorProfileModelImpl>
      get copyWith => __$$AddContractorProfileModelImplCopyWithImpl<
          _$AddContractorProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddContractorProfileModelImplToJson(
      this,
    );
  }
}

abstract class _AddContractorProfileModel implements AddContractorProfileModel {
  factory _AddContractorProfileModel(
          {@JsonKey(name: "message") final String? status,
          @JsonKey(name: "contractor") final ContractorData? data}) =
      _$AddContractorProfileModelImpl;

  factory _AddContractorProfileModel.fromJson(Map<String, dynamic> json) =
      _$AddContractorProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get status;
  @override
  @JsonKey(name: "contractor")
  ContractorData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddContractorProfileModelImplCopyWith<_$AddContractorProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContractorData _$ContractorDataFromJson(Map<String, dynamic> json) {
  return _ContractorData.fromJson(json);
}

/// @nodoc
mixin _$ContractorData {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  String get company => throw _privateConstructorUsedError;
  @JsonKey(name: "registrationNumber")
  String get regNo => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: "projectsCompleted")
  int get projectsCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "ratings")
  ContractorRatings? get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: "permissions")
  ContractorPermissions? get contractorPermissions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get contractorId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorDataCopyWith<ContractorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorDataCopyWith<$Res> {
  factory $ContractorDataCopyWith(
          ContractorData value, $Res Function(ContractorData) then) =
      _$ContractorDataCopyWithImpl<$Res, ContractorData>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "company") String company,
      @JsonKey(name: "registrationNumber") String regNo,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "projectsCompleted") int projectsCompleted,
      @JsonKey(name: "ratings") ContractorRatings? ratings,
      @JsonKey(name: "permissions")
      ContractorPermissions? contractorPermissions,
      @JsonKey(name: "isActive") bool isActive,
      @JsonKey(name: "_id") String contractorId,
      @JsonKey(name: "createdAt") String createdAt});

  $ContractorRatingsCopyWith<$Res>? get ratings;
  $ContractorPermissionsCopyWith<$Res>? get contractorPermissions;
}

/// @nodoc
class _$ContractorDataCopyWithImpl<$Res, $Val extends ContractorData>
    implements $ContractorDataCopyWith<$Res> {
  _$ContractorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? company = null,
    Object? regNo = null,
    Object? role = null,
    Object? projectsCompleted = null,
    Object? ratings = freezed,
    Object? contractorPermissions = freezed,
    Object? isActive = null,
    Object? contractorId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      regNo: null == regNo
          ? _value.regNo
          : regNo // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      projectsCompleted: null == projectsCompleted
          ? _value.projectsCompleted
          : projectsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as ContractorRatings?,
      contractorPermissions: freezed == contractorPermissions
          ? _value.contractorPermissions
          : contractorPermissions // ignore: cast_nullable_to_non_nullable
              as ContractorPermissions?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractorRatingsCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $ContractorRatingsCopyWith<$Res>(_value.ratings!, (value) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractorPermissionsCopyWith<$Res>? get contractorPermissions {
    if (_value.contractorPermissions == null) {
      return null;
    }

    return $ContractorPermissionsCopyWith<$Res>(_value.contractorPermissions!,
        (value) {
      return _then(_value.copyWith(contractorPermissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractorDataImplCopyWith<$Res>
    implements $ContractorDataCopyWith<$Res> {
  factory _$$ContractorDataImplCopyWith(_$ContractorDataImpl value,
          $Res Function(_$ContractorDataImpl) then) =
      __$$ContractorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "company") String company,
      @JsonKey(name: "registrationNumber") String regNo,
      @JsonKey(name: "role") String role,
      @JsonKey(name: "projectsCompleted") int projectsCompleted,
      @JsonKey(name: "ratings") ContractorRatings? ratings,
      @JsonKey(name: "permissions")
      ContractorPermissions? contractorPermissions,
      @JsonKey(name: "isActive") bool isActive,
      @JsonKey(name: "_id") String contractorId,
      @JsonKey(name: "createdAt") String createdAt});

  @override
  $ContractorRatingsCopyWith<$Res>? get ratings;
  @override
  $ContractorPermissionsCopyWith<$Res>? get contractorPermissions;
}

/// @nodoc
class __$$ContractorDataImplCopyWithImpl<$Res>
    extends _$ContractorDataCopyWithImpl<$Res, _$ContractorDataImpl>
    implements _$$ContractorDataImplCopyWith<$Res> {
  __$$ContractorDataImplCopyWithImpl(
      _$ContractorDataImpl _value, $Res Function(_$ContractorDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? address = null,
    Object? company = null,
    Object? regNo = null,
    Object? role = null,
    Object? projectsCompleted = null,
    Object? ratings = freezed,
    Object? contractorPermissions = freezed,
    Object? isActive = null,
    Object? contractorId = null,
    Object? createdAt = null,
  }) {
    return _then(_$ContractorDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      regNo: null == regNo
          ? _value.regNo
          : regNo // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      projectsCompleted: null == projectsCompleted
          ? _value.projectsCompleted
          : projectsCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      ratings: freezed == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as ContractorRatings?,
      contractorPermissions: freezed == contractorPermissions
          ? _value.contractorPermissions
          : contractorPermissions // ignore: cast_nullable_to_non_nullable
              as ContractorPermissions?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      contractorId: null == contractorId
          ? _value.contractorId
          : contractorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorDataImpl implements _ContractorData {
  _$ContractorDataImpl(
      {@JsonKey(name: "name") this.name = "",
      @JsonKey(name: "email") this.email = "",
      @JsonKey(name: "phone") this.phone = "",
      @JsonKey(name: "address") this.address = "",
      @JsonKey(name: "company") this.company = "",
      @JsonKey(name: "registrationNumber") this.regNo = "",
      @JsonKey(name: "role") this.role = "",
      @JsonKey(name: "projectsCompleted") this.projectsCompleted = 0,
      @JsonKey(name: "ratings") this.ratings,
      @JsonKey(name: "permissions") this.contractorPermissions,
      @JsonKey(name: "isActive") this.isActive = false,
      @JsonKey(name: "_id") this.contractorId = "",
      @JsonKey(name: "createdAt") this.createdAt = ""});

  factory _$ContractorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorDataImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "company")
  final String company;
  @override
  @JsonKey(name: "registrationNumber")
  final String regNo;
  @override
  @JsonKey(name: "role")
  final String role;
  @override
  @JsonKey(name: "projectsCompleted")
  final int projectsCompleted;
  @override
  @JsonKey(name: "ratings")
  final ContractorRatings? ratings;
  @override
  @JsonKey(name: "permissions")
  final ContractorPermissions? contractorPermissions;
  @override
  @JsonKey(name: "isActive")
  final bool isActive;
  @override
  @JsonKey(name: "_id")
  final String contractorId;
  @override
  @JsonKey(name: "createdAt")
  final String createdAt;

  @override
  String toString() {
    return 'ContractorData(name: $name, email: $email, phone: $phone, address: $address, company: $company, regNo: $regNo, role: $role, projectsCompleted: $projectsCompleted, ratings: $ratings, contractorPermissions: $contractorPermissions, isActive: $isActive, contractorId: $contractorId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractorDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.regNo, regNo) || other.regNo == regNo) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.projectsCompleted, projectsCompleted) ||
                other.projectsCompleted == projectsCompleted) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.contractorPermissions, contractorPermissions) ||
                other.contractorPermissions == contractorPermissions) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.contractorId, contractorId) ||
                other.contractorId == contractorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      email,
      phone,
      address,
      company,
      regNo,
      role,
      projectsCompleted,
      ratings,
      contractorPermissions,
      isActive,
      contractorId,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorDataImplCopyWith<_$ContractorDataImpl> get copyWith =>
      __$$ContractorDataImplCopyWithImpl<_$ContractorDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorDataImplToJson(
      this,
    );
  }
}

abstract class _ContractorData implements ContractorData {
  factory _ContractorData(
          {@JsonKey(name: "name") final String name,
          @JsonKey(name: "email") final String email,
          @JsonKey(name: "phone") final String phone,
          @JsonKey(name: "address") final String address,
          @JsonKey(name: "company") final String company,
          @JsonKey(name: "registrationNumber") final String regNo,
          @JsonKey(name: "role") final String role,
          @JsonKey(name: "projectsCompleted") final int projectsCompleted,
          @JsonKey(name: "ratings") final ContractorRatings? ratings,
          @JsonKey(name: "permissions")
          final ContractorPermissions? contractorPermissions,
          @JsonKey(name: "isActive") final bool isActive,
          @JsonKey(name: "_id") final String contractorId,
          @JsonKey(name: "createdAt") final String createdAt}) =
      _$ContractorDataImpl;

  factory _ContractorData.fromJson(Map<String, dynamic> json) =
      _$ContractorDataImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "company")
  String get company;
  @override
  @JsonKey(name: "registrationNumber")
  String get regNo;
  @override
  @JsonKey(name: "role")
  String get role;
  @override
  @JsonKey(name: "projectsCompleted")
  int get projectsCompleted;
  @override
  @JsonKey(name: "ratings")
  ContractorRatings? get ratings;
  @override
  @JsonKey(name: "permissions")
  ContractorPermissions? get contractorPermissions;
  @override
  @JsonKey(name: "isActive")
  bool get isActive;
  @override
  @JsonKey(name: "_id")
  String get contractorId;
  @override
  @JsonKey(name: "createdAt")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$ContractorDataImplCopyWith<_$ContractorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractorRatings _$ContractorRatingsFromJson(Map<String, dynamic> json) {
  return _ContractorRatings.fromJson(json);
}

/// @nodoc
mixin _$ContractorRatings {
  @JsonKey(name: "totalRatings")
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "averageRating")
  double get averageRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorRatingsCopyWith<ContractorRatings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorRatingsCopyWith<$Res> {
  factory $ContractorRatingsCopyWith(
          ContractorRatings value, $Res Function(ContractorRatings) then) =
      _$ContractorRatingsCopyWithImpl<$Res, ContractorRatings>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalRatings") double rating,
      @JsonKey(name: "averageRating") double averageRating});
}

/// @nodoc
class _$ContractorRatingsCopyWithImpl<$Res, $Val extends ContractorRatings>
    implements $ContractorRatingsCopyWith<$Res> {
  _$ContractorRatingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? averageRating = null,
  }) {
    return _then(_value.copyWith(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractorRatingsImplCopyWith<$Res>
    implements $ContractorRatingsCopyWith<$Res> {
  factory _$$ContractorRatingsImplCopyWith(_$ContractorRatingsImpl value,
          $Res Function(_$ContractorRatingsImpl) then) =
      __$$ContractorRatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalRatings") double rating,
      @JsonKey(name: "averageRating") double averageRating});
}

/// @nodoc
class __$$ContractorRatingsImplCopyWithImpl<$Res>
    extends _$ContractorRatingsCopyWithImpl<$Res, _$ContractorRatingsImpl>
    implements _$$ContractorRatingsImplCopyWith<$Res> {
  __$$ContractorRatingsImplCopyWithImpl(_$ContractorRatingsImpl _value,
      $Res Function(_$ContractorRatingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? averageRating = null,
  }) {
    return _then(_$ContractorRatingsImpl(
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorRatingsImpl implements _ContractorRatings {
  _$ContractorRatingsImpl(
      {@JsonKey(name: "totalRatings") this.rating = 0.0,
      @JsonKey(name: "averageRating") this.averageRating = 0.0});

  factory _$ContractorRatingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorRatingsImplFromJson(json);

  @override
  @JsonKey(name: "totalRatings")
  final double rating;
  @override
  @JsonKey(name: "averageRating")
  final double averageRating;

  @override
  String toString() {
    return 'ContractorRatings(rating: $rating, averageRating: $averageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractorRatingsImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rating, averageRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorRatingsImplCopyWith<_$ContractorRatingsImpl> get copyWith =>
      __$$ContractorRatingsImplCopyWithImpl<_$ContractorRatingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorRatingsImplToJson(
      this,
    );
  }
}

abstract class _ContractorRatings implements ContractorRatings {
  factory _ContractorRatings(
          {@JsonKey(name: "totalRatings") final double rating,
          @JsonKey(name: "averageRating") final double averageRating}) =
      _$ContractorRatingsImpl;

  factory _ContractorRatings.fromJson(Map<String, dynamic> json) =
      _$ContractorRatingsImpl.fromJson;

  @override
  @JsonKey(name: "totalRatings")
  double get rating;
  @override
  @JsonKey(name: "averageRating")
  double get averageRating;
  @override
  @JsonKey(ignore: true)
  _$$ContractorRatingsImplCopyWith<_$ContractorRatingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractorPermissions _$ContractorPermissionsFromJson(
    Map<String, dynamic> json) {
  return _ContractorPermissions.fromJson(json);
}

/// @nodoc
mixin _$ContractorPermissions {
  @JsonKey(name: "canManageTeam")
  bool get canManageTeam => throw _privateConstructorUsedError;
  @JsonKey(name: "canEditProfile")
  bool get canEditProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorPermissionsCopyWith<ContractorPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorPermissionsCopyWith<$Res> {
  factory $ContractorPermissionsCopyWith(ContractorPermissions value,
          $Res Function(ContractorPermissions) then) =
      _$ContractorPermissionsCopyWithImpl<$Res, ContractorPermissions>;
  @useResult
  $Res call(
      {@JsonKey(name: "canManageTeam") bool canManageTeam,
      @JsonKey(name: "canEditProfile") bool canEditProfile});
}

/// @nodoc
class _$ContractorPermissionsCopyWithImpl<$Res,
        $Val extends ContractorPermissions>
    implements $ContractorPermissionsCopyWith<$Res> {
  _$ContractorPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canManageTeam = null,
    Object? canEditProfile = null,
  }) {
    return _then(_value.copyWith(
      canManageTeam: null == canManageTeam
          ? _value.canManageTeam
          : canManageTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      canEditProfile: null == canEditProfile
          ? _value.canEditProfile
          : canEditProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractorPermissionsImplCopyWith<$Res>
    implements $ContractorPermissionsCopyWith<$Res> {
  factory _$$ContractorPermissionsImplCopyWith(
          _$ContractorPermissionsImpl value,
          $Res Function(_$ContractorPermissionsImpl) then) =
      __$$ContractorPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "canManageTeam") bool canManageTeam,
      @JsonKey(name: "canEditProfile") bool canEditProfile});
}

/// @nodoc
class __$$ContractorPermissionsImplCopyWithImpl<$Res>
    extends _$ContractorPermissionsCopyWithImpl<$Res,
        _$ContractorPermissionsImpl>
    implements _$$ContractorPermissionsImplCopyWith<$Res> {
  __$$ContractorPermissionsImplCopyWithImpl(_$ContractorPermissionsImpl _value,
      $Res Function(_$ContractorPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canManageTeam = null,
    Object? canEditProfile = null,
  }) {
    return _then(_$ContractorPermissionsImpl(
      canManageTeam: null == canManageTeam
          ? _value.canManageTeam
          : canManageTeam // ignore: cast_nullable_to_non_nullable
              as bool,
      canEditProfile: null == canEditProfile
          ? _value.canEditProfile
          : canEditProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorPermissionsImpl implements _ContractorPermissions {
  _$ContractorPermissionsImpl(
      {@JsonKey(name: "canManageTeam") this.canManageTeam = false,
      @JsonKey(name: "canEditProfile") this.canEditProfile = false});

  factory _$ContractorPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorPermissionsImplFromJson(json);

  @override
  @JsonKey(name: "canManageTeam")
  final bool canManageTeam;
  @override
  @JsonKey(name: "canEditProfile")
  final bool canEditProfile;

  @override
  String toString() {
    return 'ContractorPermissions(canManageTeam: $canManageTeam, canEditProfile: $canEditProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractorPermissionsImpl &&
            (identical(other.canManageTeam, canManageTeam) ||
                other.canManageTeam == canManageTeam) &&
            (identical(other.canEditProfile, canEditProfile) ||
                other.canEditProfile == canEditProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, canManageTeam, canEditProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorPermissionsImplCopyWith<_$ContractorPermissionsImpl>
      get copyWith => __$$ContractorPermissionsImplCopyWithImpl<
          _$ContractorPermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorPermissionsImplToJson(
      this,
    );
  }
}

abstract class _ContractorPermissions implements ContractorPermissions {
  factory _ContractorPermissions(
          {@JsonKey(name: "canManageTeam") final bool canManageTeam,
          @JsonKey(name: "canEditProfile") final bool canEditProfile}) =
      _$ContractorPermissionsImpl;

  factory _ContractorPermissions.fromJson(Map<String, dynamic> json) =
      _$ContractorPermissionsImpl.fromJson;

  @override
  @JsonKey(name: "canManageTeam")
  bool get canManageTeam;
  @override
  @JsonKey(name: "canEditProfile")
  bool get canEditProfile;
  @override
  @JsonKey(ignore: true)
  _$$ContractorPermissionsImplCopyWith<_$ContractorPermissionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
