// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rent_properties_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RentPropertiesModel _$RentPropertiesModelFromJson(Map<String, dynamic> json) {
  return _RentPropertiesModel.fromJson(json);
}

/// @nodoc
mixin _$RentPropertiesModel {
  @JsonKey(name: "Status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<RentPropertiesData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentPropertiesModelCopyWith<RentPropertiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentPropertiesModelCopyWith<$Res> {
  factory $RentPropertiesModelCopyWith(
          RentPropertiesModel value, $Res Function(RentPropertiesModel) then) =
      _$RentPropertiesModelCopyWithImpl<$Res, RentPropertiesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Status") String? status,
      @JsonKey(name: "data") List<RentPropertiesData>? data});
}

/// @nodoc
class _$RentPropertiesModelCopyWithImpl<$Res, $Val extends RentPropertiesModel>
    implements $RentPropertiesModelCopyWith<$Res> {
  _$RentPropertiesModelCopyWithImpl(this._value, this._then);

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
              as List<RentPropertiesData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentPropertiesModelImplCopyWith<$Res>
    implements $RentPropertiesModelCopyWith<$Res> {
  factory _$$RentPropertiesModelImplCopyWith(_$RentPropertiesModelImpl value,
          $Res Function(_$RentPropertiesModelImpl) then) =
      __$$RentPropertiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Status") String? status,
      @JsonKey(name: "data") List<RentPropertiesData>? data});
}

/// @nodoc
class __$$RentPropertiesModelImplCopyWithImpl<$Res>
    extends _$RentPropertiesModelCopyWithImpl<$Res, _$RentPropertiesModelImpl>
    implements _$$RentPropertiesModelImplCopyWith<$Res> {
  __$$RentPropertiesModelImplCopyWithImpl(_$RentPropertiesModelImpl _value,
      $Res Function(_$RentPropertiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RentPropertiesModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RentPropertiesData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RentPropertiesModelImpl implements _RentPropertiesModel {
  _$RentPropertiesModelImpl(
      {@JsonKey(name: "Status") this.status,
      @JsonKey(name: "data") final List<RentPropertiesData>? data})
      : _data = data;

  factory _$RentPropertiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentPropertiesModelImplFromJson(json);

  @override
  @JsonKey(name: "Status")
  final String? status;
  final List<RentPropertiesData>? _data;
  @override
  @JsonKey(name: "data")
  List<RentPropertiesData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RentPropertiesModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentPropertiesModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentPropertiesModelImplCopyWith<_$RentPropertiesModelImpl> get copyWith =>
      __$$RentPropertiesModelImplCopyWithImpl<_$RentPropertiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentPropertiesModelImplToJson(
      this,
    );
  }
}

abstract class _RentPropertiesModel implements RentPropertiesModel {
  factory _RentPropertiesModel(
          {@JsonKey(name: "Status") final String? status,
          @JsonKey(name: "data") final List<RentPropertiesData>? data}) =
      _$RentPropertiesModelImpl;

  factory _RentPropertiesModel.fromJson(Map<String, dynamic> json) =
      _$RentPropertiesModelImpl.fromJson;

  @override
  @JsonKey(name: "Status")
  String? get status;
  @override
  @JsonKey(name: "data")
  List<RentPropertiesData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$RentPropertiesModelImplCopyWith<_$RentPropertiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RentPropertiesData _$RentPropertiesDataFromJson(Map<String, dynamic> json) {
  return _RentPropertiesData.fromJson(json);
}

/// @nodoc
mixin _$RentPropertiesData {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "propertyType")
  String get propertyType => throw _privateConstructorUsedError;
  @JsonKey(name: "contact")
  String get contact => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentPropertiesDataCopyWith<RentPropertiesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentPropertiesDataCopyWith<$Res> {
  factory $RentPropertiesDataCopyWith(
          RentPropertiesData value, $Res Function(RentPropertiesData) then) =
      _$RentPropertiesDataCopyWithImpl<$Res, RentPropertiesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "propertyType") String propertyType,
      @JsonKey(name: "contact") String contact,
      @JsonKey(name: "date") String date});
}

/// @nodoc
class _$RentPropertiesDataCopyWithImpl<$Res, $Val extends RentPropertiesData>
    implements $RentPropertiesDataCopyWith<$Res> {
  _$RentPropertiesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? location = null,
    Object? image = null,
    Object? category = null,
    Object? propertyType = null,
    Object? contact = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentPropertiesDataImplCopyWith<$Res>
    implements $RentPropertiesDataCopyWith<$Res> {
  factory _$$RentPropertiesDataImplCopyWith(_$RentPropertiesDataImpl value,
          $Res Function(_$RentPropertiesDataImpl) then) =
      __$$RentPropertiesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "propertyType") String propertyType,
      @JsonKey(name: "contact") String contact,
      @JsonKey(name: "date") String date});
}

/// @nodoc
class __$$RentPropertiesDataImplCopyWithImpl<$Res>
    extends _$RentPropertiesDataCopyWithImpl<$Res, _$RentPropertiesDataImpl>
    implements _$$RentPropertiesDataImplCopyWith<$Res> {
  __$$RentPropertiesDataImplCopyWithImpl(_$RentPropertiesDataImpl _value,
      $Res Function(_$RentPropertiesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? location = null,
    Object? image = null,
    Object? category = null,
    Object? propertyType = null,
    Object? contact = null,
    Object? date = null,
  }) {
    return _then(_$RentPropertiesDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as String,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RentPropertiesDataImpl implements _RentPropertiesData {
  _$RentPropertiesDataImpl(
      {@JsonKey(name: "_id") this.id = "",
      @JsonKey(name: "title") this.title = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "price") this.price = 0,
      @JsonKey(name: "location") this.location = "",
      @JsonKey(name: "image") this.image = "",
      @JsonKey(name: "category") this.category = "",
      @JsonKey(name: "propertyType") this.propertyType = "",
      @JsonKey(name: "contact") this.contact = "",
      @JsonKey(name: "date") this.date = ""});

  factory _$RentPropertiesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentPropertiesDataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "location")
  final String location;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "propertyType")
  final String propertyType;
  @override
  @JsonKey(name: "contact")
  final String contact;
  @override
  @JsonKey(name: "date")
  final String date;

  @override
  String toString() {
    return 'RentPropertiesData(id: $id, title: $title, description: $description, price: $price, location: $location, image: $image, category: $category, propertyType: $propertyType, contact: $contact, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentPropertiesDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, price,
      location, image, category, propertyType, contact, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentPropertiesDataImplCopyWith<_$RentPropertiesDataImpl> get copyWith =>
      __$$RentPropertiesDataImplCopyWithImpl<_$RentPropertiesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentPropertiesDataImplToJson(
      this,
    );
  }
}

abstract class _RentPropertiesData implements RentPropertiesData {
  factory _RentPropertiesData(
      {@JsonKey(name: "_id") final String id,
      @JsonKey(name: "title") final String title,
      @JsonKey(name: "description") final String description,
      @JsonKey(name: "price") final int price,
      @JsonKey(name: "location") final String location,
      @JsonKey(name: "image") final String image,
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "propertyType") final String propertyType,
      @JsonKey(name: "contact") final String contact,
      @JsonKey(name: "date") final String date}) = _$RentPropertiesDataImpl;

  factory _RentPropertiesData.fromJson(Map<String, dynamic> json) =
      _$RentPropertiesDataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "location")
  String get location;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "propertyType")
  String get propertyType;
  @override
  @JsonKey(name: "contact")
  String get contact;
  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$RentPropertiesDataImplCopyWith<_$RentPropertiesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
