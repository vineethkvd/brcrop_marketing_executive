// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryListModel _$CategoryListModelFromJson(Map<String, dynamic> json) {
  return _CategoryListModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryListModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryListModelCopyWith<CategoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListModelCopyWith<$Res> {
  factory $CategoryListModelCopyWith(
          CategoryListModel value, $Res Function(CategoryListModel) then) =
      _$CategoryListModelCopyWithImpl<$Res, CategoryListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class _$CategoryListModelCopyWithImpl<$Res, $Val extends CategoryListModel>
    implements $CategoryListModelCopyWith<$Res> {
  _$CategoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryListModelImplCopyWith<$Res>
    implements $CategoryListModelCopyWith<$Res> {
  factory _$$CategoryListModelImplCopyWith(_$CategoryListModelImpl value,
          $Res Function(_$CategoryListModelImpl) then) =
      __$$CategoryListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class __$$CategoryListModelImplCopyWithImpl<$Res>
    extends _$CategoryListModelCopyWithImpl<$Res, _$CategoryListModelImpl>
    implements _$$CategoryListModelImplCopyWith<$Res> {
  __$$CategoryListModelImplCopyWithImpl(_$CategoryListModelImpl _value,
      $Res Function(_$CategoryListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CategoryListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListModelImpl implements _CategoryListModel {
  const _$CategoryListModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "data") final List<Data>? data = const []})
      : _data = data;

  factory _$CategoryListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Data>? _data;
  @override
  @JsonKey(name: "data")
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryListModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListModelImplCopyWith<_$CategoryListModelImpl> get copyWith =>
      __$$CategoryListModelImplCopyWithImpl<_$CategoryListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryListModel implements CategoryListModel {
  const factory _CategoryListModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<Data>? data}) = _$CategoryListModelImpl;

  factory _CategoryListModel.fromJson(Map<String, dynamic> json) =
      _$CategoryListModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoryListModelImplCopyWith<_$CategoryListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "pro_id")
  String? get proId => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_unique_id")
  String? get proUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_img1")
  String? get proImg1 => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_price")
  String? get proPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_packing")
  String? get proPacking => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_days")
  String? get creditDays => throw _privateConstructorUsedError;
  @JsonKey(name: "create_dt")
  String? get createDt => throw _privateConstructorUsedError;
  @JsonKey(name: "update_dt")
  String? get updateDt => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_status")
  String? get proStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "pro_id") String? proId,
      @JsonKey(name: "pro_unique_id") String? proUniqueId,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "pro_img1") String? proImg1,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "pro_packing") String? proPacking,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "credit_days") String? creditDays,
      @JsonKey(name: "create_dt") String? createDt,
      @JsonKey(name: "update_dt") String? updateDt,
      @JsonKey(name: "pro_status") String? proStatus});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proId = freezed,
    Object? proUniqueId = freezed,
    Object? categoryId = freezed,
    Object? productName = freezed,
    Object? proImg1 = freezed,
    Object? description = freezed,
    Object? proPrice = freezed,
    Object? proPacking = freezed,
    Object? proPackingSize = freezed,
    Object? creditDays = freezed,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? proStatus = freezed,
  }) {
    return _then(_value.copyWith(
      proId: freezed == proId
          ? _value.proId
          : proId // ignore: cast_nullable_to_non_nullable
              as String?,
      proUniqueId: freezed == proUniqueId
          ? _value.proUniqueId
          : proUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      proImg1: freezed == proImg1
          ? _value.proImg1
          : proImg1 // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      proPacking: freezed == proPacking
          ? _value.proPacking
          : proPacking // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as String?,
      proStatus: freezed == proStatus
          ? _value.proStatus
          : proStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pro_id") String? proId,
      @JsonKey(name: "pro_unique_id") String? proUniqueId,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "pro_img1") String? proImg1,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "pro_packing") String? proPacking,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "credit_days") String? creditDays,
      @JsonKey(name: "create_dt") String? createDt,
      @JsonKey(name: "update_dt") String? updateDt,
      @JsonKey(name: "pro_status") String? proStatus});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proId = freezed,
    Object? proUniqueId = freezed,
    Object? categoryId = freezed,
    Object? productName = freezed,
    Object? proImg1 = freezed,
    Object? description = freezed,
    Object? proPrice = freezed,
    Object? proPacking = freezed,
    Object? proPackingSize = freezed,
    Object? creditDays = freezed,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? proStatus = freezed,
  }) {
    return _then(_$DataImpl(
      proId: freezed == proId
          ? _value.proId
          : proId // ignore: cast_nullable_to_non_nullable
              as String?,
      proUniqueId: freezed == proUniqueId
          ? _value.proUniqueId
          : proUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      proImg1: freezed == proImg1
          ? _value.proImg1
          : proImg1 // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      proPacking: freezed == proPacking
          ? _value.proPacking
          : proPacking // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as String?,
      proStatus: freezed == proStatus
          ? _value.proStatus
          : proStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "pro_id") this.proId = '',
      @JsonKey(name: "pro_unique_id") this.proUniqueId = '',
      @JsonKey(name: "category_id") this.categoryId = '',
      @JsonKey(name: "product_name") this.productName = '',
      @JsonKey(name: "pro_img1") this.proImg1 = '',
      @JsonKey(name: "description") this.description = '',
      @JsonKey(name: "pro_price") this.proPrice = '',
      @JsonKey(name: "pro_packing") this.proPacking = '',
      @JsonKey(name: "pro_packing_size") this.proPackingSize = '',
      @JsonKey(name: "credit_days") this.creditDays = '',
      @JsonKey(name: "create_dt") this.createDt = '',
      @JsonKey(name: "update_dt") this.updateDt = '',
      @JsonKey(name: "pro_status") this.proStatus = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "pro_id")
  final String? proId;
  @override
  @JsonKey(name: "pro_unique_id")
  final String? proUniqueId;
  @override
  @JsonKey(name: "category_id")
  final String? categoryId;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "pro_img1")
  final String? proImg1;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "pro_price")
  final String? proPrice;
  @override
  @JsonKey(name: "pro_packing")
  final String? proPacking;
  @override
  @JsonKey(name: "pro_packing_size")
  final String? proPackingSize;
  @override
  @JsonKey(name: "credit_days")
  final String? creditDays;
  @override
  @JsonKey(name: "create_dt")
  final String? createDt;
  @override
  @JsonKey(name: "update_dt")
  final String? updateDt;
  @override
  @JsonKey(name: "pro_status")
  final String? proStatus;

  @override
  String toString() {
    return 'Data(proId: $proId, proUniqueId: $proUniqueId, categoryId: $categoryId, productName: $productName, proImg1: $proImg1, description: $description, proPrice: $proPrice, proPacking: $proPacking, proPackingSize: $proPackingSize, creditDays: $creditDays, createDt: $createDt, updateDt: $updateDt, proStatus: $proStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.proId, proId) || other.proId == proId) &&
            (identical(other.proUniqueId, proUniqueId) ||
                other.proUniqueId == proUniqueId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.proImg1, proImg1) || other.proImg1 == proImg1) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.proPrice, proPrice) ||
                other.proPrice == proPrice) &&
            (identical(other.proPacking, proPacking) ||
                other.proPacking == proPacking) &&
            (identical(other.proPackingSize, proPackingSize) ||
                other.proPackingSize == proPackingSize) &&
            (identical(other.creditDays, creditDays) ||
                other.creditDays == creditDays) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt) &&
            (identical(other.proStatus, proStatus) ||
                other.proStatus == proStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      proId,
      proUniqueId,
      categoryId,
      productName,
      proImg1,
      description,
      proPrice,
      proPacking,
      proPackingSize,
      creditDays,
      createDt,
      updateDt,
      proStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "pro_id") final String? proId,
      @JsonKey(name: "pro_unique_id") final String? proUniqueId,
      @JsonKey(name: "category_id") final String? categoryId,
      @JsonKey(name: "product_name") final String? productName,
      @JsonKey(name: "pro_img1") final String? proImg1,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "pro_price") final String? proPrice,
      @JsonKey(name: "pro_packing") final String? proPacking,
      @JsonKey(name: "pro_packing_size") final String? proPackingSize,
      @JsonKey(name: "credit_days") final String? creditDays,
      @JsonKey(name: "create_dt") final String? createDt,
      @JsonKey(name: "update_dt") final String? updateDt,
      @JsonKey(name: "pro_status") final String? proStatus}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "pro_id")
  String? get proId;
  @override
  @JsonKey(name: "pro_unique_id")
  String? get proUniqueId;
  @override
  @JsonKey(name: "category_id")
  String? get categoryId;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "pro_img1")
  String? get proImg1;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "pro_price")
  String? get proPrice;
  @override
  @JsonKey(name: "pro_packing")
  String? get proPacking;
  @override
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize;
  @override
  @JsonKey(name: "credit_days")
  String? get creditDays;
  @override
  @JsonKey(name: "create_dt")
  String? get createDt;
  @override
  @JsonKey(name: "update_dt")
  String? get updateDt;
  @override
  @JsonKey(name: "pro_status")
  String? get proStatus;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
