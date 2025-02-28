// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_contractor_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllContractorProfileModel _$GetAllContractorProfileModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllContractorProfileModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllContractorProfileModel {
  @JsonKey(name: "profiles")
  List<ContractorProfileModelData>? get profiles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllContractorProfileModelCopyWith<GetAllContractorProfileModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllContractorProfileModelCopyWith<$Res> {
  factory $GetAllContractorProfileModelCopyWith(
          GetAllContractorProfileModel value,
          $Res Function(GetAllContractorProfileModel) then) =
      _$GetAllContractorProfileModelCopyWithImpl<$Res,
          GetAllContractorProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "profiles") List<ContractorProfileModelData>? profiles});
}

/// @nodoc
class _$GetAllContractorProfileModelCopyWithImpl<$Res,
        $Val extends GetAllContractorProfileModel>
    implements $GetAllContractorProfileModelCopyWith<$Res> {
  _$GetAllContractorProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = freezed,
  }) {
    return _then(_value.copyWith(
      profiles: freezed == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ContractorProfileModelData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllContractorProfileModelImplCopyWith<$Res>
    implements $GetAllContractorProfileModelCopyWith<$Res> {
  factory _$$GetAllContractorProfileModelImplCopyWith(
          _$GetAllContractorProfileModelImpl value,
          $Res Function(_$GetAllContractorProfileModelImpl) then) =
      __$$GetAllContractorProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profiles") List<ContractorProfileModelData>? profiles});
}

/// @nodoc
class __$$GetAllContractorProfileModelImplCopyWithImpl<$Res>
    extends _$GetAllContractorProfileModelCopyWithImpl<$Res,
        _$GetAllContractorProfileModelImpl>
    implements _$$GetAllContractorProfileModelImplCopyWith<$Res> {
  __$$GetAllContractorProfileModelImplCopyWithImpl(
      _$GetAllContractorProfileModelImpl _value,
      $Res Function(_$GetAllContractorProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profiles = freezed,
  }) {
    return _then(_$GetAllContractorProfileModelImpl(
      profiles: freezed == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ContractorProfileModelData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllContractorProfileModelImpl
    implements _GetAllContractorProfileModel {
  _$GetAllContractorProfileModelImpl(
      {@JsonKey(name: "profiles")
      final List<ContractorProfileModelData>? profiles})
      : _profiles = profiles;

  factory _$GetAllContractorProfileModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllContractorProfileModelImplFromJson(json);

  final List<ContractorProfileModelData>? _profiles;
  @override
  @JsonKey(name: "profiles")
  List<ContractorProfileModelData>? get profiles {
    final value = _profiles;
    if (value == null) return null;
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllContractorProfileModel(profiles: $profiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllContractorProfileModelImpl &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllContractorProfileModelImplCopyWith<
          _$GetAllContractorProfileModelImpl>
      get copyWith => __$$GetAllContractorProfileModelImplCopyWithImpl<
          _$GetAllContractorProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllContractorProfileModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllContractorProfileModel
    implements GetAllContractorProfileModel {
  factory _GetAllContractorProfileModel(
          {@JsonKey(name: "profiles")
          final List<ContractorProfileModelData>? profiles}) =
      _$GetAllContractorProfileModelImpl;

  factory _GetAllContractorProfileModel.fromJson(Map<String, dynamic> json) =
      _$GetAllContractorProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "profiles")
  List<ContractorProfileModelData>? get profiles;
  @override
  @JsonKey(ignore: true)
  _$$GetAllContractorProfileModelImplCopyWith<
          _$GetAllContractorProfileModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContractorProfileModelData _$ContractorProfileModelDataFromJson(
    Map<String, dynamic> json) {
  return _ContractorProfileModelData.fromJson(json);
}

/// @nodoc
mixin _$ContractorProfileModelData {
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
  GetContractorRatings? get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: "permissions")
  GetContractorPermissions? get contractorPermissions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String get contractorId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractorProfileModelDataCopyWith<ContractorProfileModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorProfileModelDataCopyWith<$Res> {
  factory $ContractorProfileModelDataCopyWith(ContractorProfileModelData value,
          $Res Function(ContractorProfileModelData) then) =
      _$ContractorProfileModelDataCopyWithImpl<$Res,
          ContractorProfileModelData>;
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
      @JsonKey(name: "ratings") GetContractorRatings? ratings,
      @JsonKey(name: "permissions")
      GetContractorPermissions? contractorPermissions,
      @JsonKey(name: "isActive") bool isActive,
      @JsonKey(name: "_id") String contractorId,
      @JsonKey(name: "createdAt") String createdAt});

  $GetContractorRatingsCopyWith<$Res>? get ratings;
  $GetContractorPermissionsCopyWith<$Res>? get contractorPermissions;
}

/// @nodoc
class _$ContractorProfileModelDataCopyWithImpl<$Res,
        $Val extends ContractorProfileModelData>
    implements $ContractorProfileModelDataCopyWith<$Res> {
  _$ContractorProfileModelDataCopyWithImpl(this._value, this._then);

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
              as GetContractorRatings?,
      contractorPermissions: freezed == contractorPermissions
          ? _value.contractorPermissions
          : contractorPermissions // ignore: cast_nullable_to_non_nullable
              as GetContractorPermissions?,
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
  $GetContractorRatingsCopyWith<$Res>? get ratings {
    if (_value.ratings == null) {
      return null;
    }

    return $GetContractorRatingsCopyWith<$Res>(_value.ratings!, (value) {
      return _then(_value.copyWith(ratings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GetContractorPermissionsCopyWith<$Res>? get contractorPermissions {
    if (_value.contractorPermissions == null) {
      return null;
    }

    return $GetContractorPermissionsCopyWith<$Res>(
        _value.contractorPermissions!, (value) {
      return _then(_value.copyWith(contractorPermissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContractorProfileModelDataImplCopyWith<$Res>
    implements $ContractorProfileModelDataCopyWith<$Res> {
  factory _$$ContractorProfileModelDataImplCopyWith(
          _$ContractorProfileModelDataImpl value,
          $Res Function(_$ContractorProfileModelDataImpl) then) =
      __$$ContractorProfileModelDataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "ratings") GetContractorRatings? ratings,
      @JsonKey(name: "permissions")
      GetContractorPermissions? contractorPermissions,
      @JsonKey(name: "isActive") bool isActive,
      @JsonKey(name: "_id") String contractorId,
      @JsonKey(name: "createdAt") String createdAt});

  @override
  $GetContractorRatingsCopyWith<$Res>? get ratings;
  @override
  $GetContractorPermissionsCopyWith<$Res>? get contractorPermissions;
}

/// @nodoc
class __$$ContractorProfileModelDataImplCopyWithImpl<$Res>
    extends _$ContractorProfileModelDataCopyWithImpl<$Res,
        _$ContractorProfileModelDataImpl>
    implements _$$ContractorProfileModelDataImplCopyWith<$Res> {
  __$$ContractorProfileModelDataImplCopyWithImpl(
      _$ContractorProfileModelDataImpl _value,
      $Res Function(_$ContractorProfileModelDataImpl) _then)
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
    return _then(_$ContractorProfileModelDataImpl(
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
              as GetContractorRatings?,
      contractorPermissions: freezed == contractorPermissions
          ? _value.contractorPermissions
          : contractorPermissions // ignore: cast_nullable_to_non_nullable
              as GetContractorPermissions?,
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
class _$ContractorProfileModelDataImpl implements _ContractorProfileModelData {
  _$ContractorProfileModelDataImpl(
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

  factory _$ContractorProfileModelDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ContractorProfileModelDataImplFromJson(json);

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
  final GetContractorRatings? ratings;
  @override
  @JsonKey(name: "permissions")
  final GetContractorPermissions? contractorPermissions;
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
    return 'ContractorProfileModelData(name: $name, email: $email, phone: $phone, address: $address, company: $company, regNo: $regNo, role: $role, projectsCompleted: $projectsCompleted, ratings: $ratings, contractorPermissions: $contractorPermissions, isActive: $isActive, contractorId: $contractorId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractorProfileModelDataImpl &&
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
  _$$ContractorProfileModelDataImplCopyWith<_$ContractorProfileModelDataImpl>
      get copyWith => __$$ContractorProfileModelDataImplCopyWithImpl<
          _$ContractorProfileModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorProfileModelDataImplToJson(
      this,
    );
  }
}

abstract class _ContractorProfileModelData
    implements ContractorProfileModelData {
  factory _ContractorProfileModelData(
          {@JsonKey(name: "name") final String name,
          @JsonKey(name: "email") final String email,
          @JsonKey(name: "phone") final String phone,
          @JsonKey(name: "address") final String address,
          @JsonKey(name: "company") final String company,
          @JsonKey(name: "registrationNumber") final String regNo,
          @JsonKey(name: "role") final String role,
          @JsonKey(name: "projectsCompleted") final int projectsCompleted,
          @JsonKey(name: "ratings") final GetContractorRatings? ratings,
          @JsonKey(name: "permissions")
          final GetContractorPermissions? contractorPermissions,
          @JsonKey(name: "isActive") final bool isActive,
          @JsonKey(name: "_id") final String contractorId,
          @JsonKey(name: "createdAt") final String createdAt}) =
      _$ContractorProfileModelDataImpl;

  factory _ContractorProfileModelData.fromJson(Map<String, dynamic> json) =
      _$ContractorProfileModelDataImpl.fromJson;

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
  GetContractorRatings? get ratings;
  @override
  @JsonKey(name: "permissions")
  GetContractorPermissions? get contractorPermissions;
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
  _$$ContractorProfileModelDataImplCopyWith<_$ContractorProfileModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetContractorRatings _$GetContractorRatingsFromJson(Map<String, dynamic> json) {
  return _GetContractorRatings.fromJson(json);
}

/// @nodoc
mixin _$GetContractorRatings {
  @JsonKey(name: "totalRatings")
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "averageRating")
  double get averageRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetContractorRatingsCopyWith<GetContractorRatings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetContractorRatingsCopyWith<$Res> {
  factory $GetContractorRatingsCopyWith(GetContractorRatings value,
          $Res Function(GetContractorRatings) then) =
      _$GetContractorRatingsCopyWithImpl<$Res, GetContractorRatings>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalRatings") double rating,
      @JsonKey(name: "averageRating") double averageRating});
}

/// @nodoc
class _$GetContractorRatingsCopyWithImpl<$Res,
        $Val extends GetContractorRatings>
    implements $GetContractorRatingsCopyWith<$Res> {
  _$GetContractorRatingsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetContractorRatingsImplCopyWith<$Res>
    implements $GetContractorRatingsCopyWith<$Res> {
  factory _$$GetContractorRatingsImplCopyWith(_$GetContractorRatingsImpl value,
          $Res Function(_$GetContractorRatingsImpl) then) =
      __$$GetContractorRatingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalRatings") double rating,
      @JsonKey(name: "averageRating") double averageRating});
}

/// @nodoc
class __$$GetContractorRatingsImplCopyWithImpl<$Res>
    extends _$GetContractorRatingsCopyWithImpl<$Res, _$GetContractorRatingsImpl>
    implements _$$GetContractorRatingsImplCopyWith<$Res> {
  __$$GetContractorRatingsImplCopyWithImpl(_$GetContractorRatingsImpl _value,
      $Res Function(_$GetContractorRatingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? averageRating = null,
  }) {
    return _then(_$GetContractorRatingsImpl(
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
class _$GetContractorRatingsImpl implements _GetContractorRatings {
  _$GetContractorRatingsImpl(
      {@JsonKey(name: "totalRatings") this.rating = 0.0,
      @JsonKey(name: "averageRating") this.averageRating = 0.0});

  factory _$GetContractorRatingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetContractorRatingsImplFromJson(json);

  @override
  @JsonKey(name: "totalRatings")
  final double rating;
  @override
  @JsonKey(name: "averageRating")
  final double averageRating;

  @override
  String toString() {
    return 'GetContractorRatings(rating: $rating, averageRating: $averageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContractorRatingsImpl &&
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
  _$$GetContractorRatingsImplCopyWith<_$GetContractorRatingsImpl>
      get copyWith =>
          __$$GetContractorRatingsImplCopyWithImpl<_$GetContractorRatingsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetContractorRatingsImplToJson(
      this,
    );
  }
}

abstract class _GetContractorRatings implements GetContractorRatings {
  factory _GetContractorRatings(
          {@JsonKey(name: "totalRatings") final double rating,
          @JsonKey(name: "averageRating") final double averageRating}) =
      _$GetContractorRatingsImpl;

  factory _GetContractorRatings.fromJson(Map<String, dynamic> json) =
      _$GetContractorRatingsImpl.fromJson;

  @override
  @JsonKey(name: "totalRatings")
  double get rating;
  @override
  @JsonKey(name: "averageRating")
  double get averageRating;
  @override
  @JsonKey(ignore: true)
  _$$GetContractorRatingsImplCopyWith<_$GetContractorRatingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetContractorPermissions _$GetContractorPermissionsFromJson(
    Map<String, dynamic> json) {
  return _GetContractorPermissions.fromJson(json);
}

/// @nodoc
mixin _$GetContractorPermissions {
  @JsonKey(name: "canManageTeam")
  bool get canManageTeam => throw _privateConstructorUsedError;
  @JsonKey(name: "canEditProfile")
  bool get canEditProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetContractorPermissionsCopyWith<GetContractorPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetContractorPermissionsCopyWith<$Res> {
  factory $GetContractorPermissionsCopyWith(GetContractorPermissions value,
          $Res Function(GetContractorPermissions) then) =
      _$GetContractorPermissionsCopyWithImpl<$Res, GetContractorPermissions>;
  @useResult
  $Res call(
      {@JsonKey(name: "canManageTeam") bool canManageTeam,
      @JsonKey(name: "canEditProfile") bool canEditProfile});
}

/// @nodoc
class _$GetContractorPermissionsCopyWithImpl<$Res,
        $Val extends GetContractorPermissions>
    implements $GetContractorPermissionsCopyWith<$Res> {
  _$GetContractorPermissionsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetContractorPermissionsImplCopyWith<$Res>
    implements $GetContractorPermissionsCopyWith<$Res> {
  factory _$$GetContractorPermissionsImplCopyWith(
          _$GetContractorPermissionsImpl value,
          $Res Function(_$GetContractorPermissionsImpl) then) =
      __$$GetContractorPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "canManageTeam") bool canManageTeam,
      @JsonKey(name: "canEditProfile") bool canEditProfile});
}

/// @nodoc
class __$$GetContractorPermissionsImplCopyWithImpl<$Res>
    extends _$GetContractorPermissionsCopyWithImpl<$Res,
        _$GetContractorPermissionsImpl>
    implements _$$GetContractorPermissionsImplCopyWith<$Res> {
  __$$GetContractorPermissionsImplCopyWithImpl(
      _$GetContractorPermissionsImpl _value,
      $Res Function(_$GetContractorPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canManageTeam = null,
    Object? canEditProfile = null,
  }) {
    return _then(_$GetContractorPermissionsImpl(
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
class _$GetContractorPermissionsImpl implements _GetContractorPermissions {
  _$GetContractorPermissionsImpl(
      {@JsonKey(name: "canManageTeam") this.canManageTeam = false,
      @JsonKey(name: "canEditProfile") this.canEditProfile = false});

  factory _$GetContractorPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetContractorPermissionsImplFromJson(json);

  @override
  @JsonKey(name: "canManageTeam")
  final bool canManageTeam;
  @override
  @JsonKey(name: "canEditProfile")
  final bool canEditProfile;

  @override
  String toString() {
    return 'GetContractorPermissions(canManageTeam: $canManageTeam, canEditProfile: $canEditProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContractorPermissionsImpl &&
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
  _$$GetContractorPermissionsImplCopyWith<_$GetContractorPermissionsImpl>
      get copyWith => __$$GetContractorPermissionsImplCopyWithImpl<
          _$GetContractorPermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetContractorPermissionsImplToJson(
      this,
    );
  }
}

abstract class _GetContractorPermissions implements GetContractorPermissions {
  factory _GetContractorPermissions(
          {@JsonKey(name: "canManageTeam") final bool canManageTeam,
          @JsonKey(name: "canEditProfile") final bool canEditProfile}) =
      _$GetContractorPermissionsImpl;

  factory _GetContractorPermissions.fromJson(Map<String, dynamic> json) =
      _$GetContractorPermissionsImpl.fromJson;

  @override
  @JsonKey(name: "canManageTeam")
  bool get canManageTeam;
  @override
  @JsonKey(name: "canEditProfile")
  bool get canEditProfile;
  @override
  @JsonKey(ignore: true)
  _$$GetContractorPermissionsImplCopyWith<_$GetContractorPermissionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
