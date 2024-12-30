// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_for_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HouseForSaleModel _$HouseForSaleModelFromJson(Map<String, dynamic> json) {
  return _HouseForSaleModel.fromJson(json);
}

/// @nodoc
mixin _$HouseForSaleModel {
  @JsonKey(name: "Status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<HouseForSaleData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HouseForSaleModelCopyWith<HouseForSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseForSaleModelCopyWith<$Res> {
  factory $HouseForSaleModelCopyWith(
          HouseForSaleModel value, $Res Function(HouseForSaleModel) then) =
      _$HouseForSaleModelCopyWithImpl<$Res, HouseForSaleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Status") String? status,
      @JsonKey(name: "data") List<HouseForSaleData>? data});
}

/// @nodoc
class _$HouseForSaleModelCopyWithImpl<$Res, $Val extends HouseForSaleModel>
    implements $HouseForSaleModelCopyWith<$Res> {
  _$HouseForSaleModelCopyWithImpl(this._value, this._then);

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
              as List<HouseForSaleData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseForSaleModelImplCopyWith<$Res>
    implements $HouseForSaleModelCopyWith<$Res> {
  factory _$$HouseForSaleModelImplCopyWith(_$HouseForSaleModelImpl value,
          $Res Function(_$HouseForSaleModelImpl) then) =
      __$$HouseForSaleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Status") String? status,
      @JsonKey(name: "data") List<HouseForSaleData>? data});
}

/// @nodoc
class __$$HouseForSaleModelImplCopyWithImpl<$Res>
    extends _$HouseForSaleModelCopyWithImpl<$Res, _$HouseForSaleModelImpl>
    implements _$$HouseForSaleModelImplCopyWith<$Res> {
  __$$HouseForSaleModelImplCopyWithImpl(_$HouseForSaleModelImpl _value,
      $Res Function(_$HouseForSaleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HouseForSaleModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HouseForSaleData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseForSaleModelImpl implements _HouseForSaleModel {
  _$HouseForSaleModelImpl(
      {@JsonKey(name: "Status") this.status,
      @JsonKey(name: "data") final List<HouseForSaleData>? data})
      : _data = data;

  factory _$HouseForSaleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseForSaleModelImplFromJson(json);

  @override
  @JsonKey(name: "Status")
  final String? status;
  final List<HouseForSaleData>? _data;
  @override
  @JsonKey(name: "data")
  List<HouseForSaleData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HouseForSaleModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseForSaleModelImpl &&
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
  _$$HouseForSaleModelImplCopyWith<_$HouseForSaleModelImpl> get copyWith =>
      __$$HouseForSaleModelImplCopyWithImpl<_$HouseForSaleModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseForSaleModelImplToJson(
      this,
    );
  }
}

abstract class _HouseForSaleModel implements HouseForSaleModel {
  factory _HouseForSaleModel(
          {@JsonKey(name: "Status") final String? status,
          @JsonKey(name: "data") final List<HouseForSaleData>? data}) =
      _$HouseForSaleModelImpl;

  factory _HouseForSaleModel.fromJson(Map<String, dynamic> json) =
      _$HouseForSaleModelImpl.fromJson;

  @override
  @JsonKey(name: "Status")
  String? get status;
  @override
  @JsonKey(name: "data")
  List<HouseForSaleData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$HouseForSaleModelImplCopyWith<_$HouseForSaleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HouseForSaleData _$HouseForSaleDataFromJson(Map<String, dynamic> json) {
  return _HouseForSaleData.fromJson(json);
}

/// @nodoc
mixin _$HouseForSaleData {
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
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HouseForSaleDataCopyWith<HouseForSaleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseForSaleDataCopyWith<$Res> {
  factory $HouseForSaleDataCopyWith(
          HouseForSaleData value, $Res Function(HouseForSaleData) then) =
      _$HouseForSaleDataCopyWithImpl<$Res, HouseForSaleData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "location") String location,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "date") String date});
}

/// @nodoc
class _$HouseForSaleDataCopyWithImpl<$Res, $Val extends HouseForSaleData>
    implements $HouseForSaleDataCopyWith<$Res> {
  _$HouseForSaleDataCopyWithImpl(this._value, this._then);

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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseForSaleDataImplCopyWith<$Res>
    implements $HouseForSaleDataCopyWith<$Res> {
  factory _$$HouseForSaleDataImplCopyWith(_$HouseForSaleDataImpl value,
          $Res Function(_$HouseForSaleDataImpl) then) =
      __$$HouseForSaleDataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "date") String date});
}

/// @nodoc
class __$$HouseForSaleDataImplCopyWithImpl<$Res>
    extends _$HouseForSaleDataCopyWithImpl<$Res, _$HouseForSaleDataImpl>
    implements _$$HouseForSaleDataImplCopyWith<$Res> {
  __$$HouseForSaleDataImplCopyWithImpl(_$HouseForSaleDataImpl _value,
      $Res Function(_$HouseForSaleDataImpl) _then)
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
    Object? date = null,
  }) {
    return _then(_$HouseForSaleDataImpl(
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseForSaleDataImpl implements _HouseForSaleData {
  _$HouseForSaleDataImpl(
      {@JsonKey(name: "_id") this.id = "",
      @JsonKey(name: "title") this.title = "",
      @JsonKey(name: "description") this.description = "",
      @JsonKey(name: "price") this.price = 0,
      @JsonKey(name: "location") this.location = "",
      @JsonKey(name: "image") this.image = "",
      @JsonKey(name: "category") this.category = "",
      @JsonKey(name: "date") this.date = ""});

  factory _$HouseForSaleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseForSaleDataImplFromJson(json);

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
  @JsonKey(name: "date")
  final String date;

  @override
  String toString() {
    return 'HouseForSaleData(id: $id, title: $title, description: $description, price: $price, location: $location, image: $image, category: $category, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseForSaleDataImpl &&
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
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, price,
      location, image, category, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseForSaleDataImplCopyWith<_$HouseForSaleDataImpl> get copyWith =>
      __$$HouseForSaleDataImplCopyWithImpl<_$HouseForSaleDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseForSaleDataImplToJson(
      this,
    );
  }
}

abstract class _HouseForSaleData implements HouseForSaleData {
  factory _HouseForSaleData(
      {@JsonKey(name: "_id") final String id,
      @JsonKey(name: "title") final String title,
      @JsonKey(name: "description") final String description,
      @JsonKey(name: "price") final int price,
      @JsonKey(name: "location") final String location,
      @JsonKey(name: "image") final String image,
      @JsonKey(name: "category") final String category,
      @JsonKey(name: "date") final String date}) = _$HouseForSaleDataImpl;

  factory _HouseForSaleData.fromJson(Map<String, dynamic> json) =
      _$HouseForSaleDataImpl.fromJson;

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
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$HouseForSaleDataImplCopyWith<_$HouseForSaleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
