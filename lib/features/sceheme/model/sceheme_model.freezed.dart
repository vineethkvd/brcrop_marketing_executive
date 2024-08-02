// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sceheme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScehemeModel _$ScehemeModelFromJson(Map<String, dynamic> json) {
  return _ScehemeModel.fromJson(json);
}

/// @nodoc
mixin _$ScehemeModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScehemeModelCopyWith<ScehemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScehemeModelCopyWith<$Res> {
  factory $ScehemeModelCopyWith(
          ScehemeModel value, $Res Function(ScehemeModel) then) =
      _$ScehemeModelCopyWithImpl<$Res, ScehemeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class _$ScehemeModelCopyWithImpl<$Res, $Val extends ScehemeModel>
    implements $ScehemeModelCopyWith<$Res> {
  _$ScehemeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ScehemeModelImplCopyWith<$Res>
    implements $ScehemeModelCopyWith<$Res> {
  factory _$$ScehemeModelImplCopyWith(
          _$ScehemeModelImpl value, $Res Function(_$ScehemeModelImpl) then) =
      __$$ScehemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class __$$ScehemeModelImplCopyWithImpl<$Res>
    extends _$ScehemeModelCopyWithImpl<$Res, _$ScehemeModelImpl>
    implements _$$ScehemeModelImplCopyWith<$Res> {
  __$$ScehemeModelImplCopyWithImpl(
      _$ScehemeModelImpl _value, $Res Function(_$ScehemeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ScehemeModelImpl(
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
class _$ScehemeModelImpl implements _ScehemeModel {
  const _$ScehemeModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "data") final List<Data>? data = const []})
      : _data = data;

  factory _$ScehemeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScehemeModelImplFromJson(json);

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
    return 'ScehemeModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScehemeModelImpl &&
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
  _$$ScehemeModelImplCopyWith<_$ScehemeModelImpl> get copyWith =>
      __$$ScehemeModelImplCopyWithImpl<_$ScehemeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScehemeModelImplToJson(
      this,
    );
  }
}

abstract class _ScehemeModel implements ScehemeModel {
  const factory _ScehemeModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<Data>? data}) = _$ScehemeModelImpl;

  factory _ScehemeModel.fromJson(Map<String, dynamic> json) =
      _$ScehemeModelImpl.fromJson;

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
  _$$ScehemeModelImplCopyWith<_$ScehemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "sch_id")
  String? get schId => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_name")
  String? get schName => throw _privateConstructorUsedError;
  @JsonKey(name: "product_ids")
  String? get productIds => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_credit_value")
  String? get schCreditValue => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_offer")
  String? get schOffer => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_st_dt")
  String? get schStDt => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_end_dt")
  String? get schEndDt => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_status")
  String? get schStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "sch_created_dt")
  String? get schCreatedDt => throw _privateConstructorUsedError;
  @JsonKey(name: "product_details")
  List<ProductDetail>? get productDetails => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "sch_id") String? schId,
      @JsonKey(name: "sch_name") String? schName,
      @JsonKey(name: "product_ids") String? productIds,
      @JsonKey(name: "sch_credit_value") String? schCreditValue,
      @JsonKey(name: "sch_offer") String? schOffer,
      @JsonKey(name: "sch_st_dt") String? schStDt,
      @JsonKey(name: "sch_end_dt") String? schEndDt,
      @JsonKey(name: "sch_status") String? schStatus,
      @JsonKey(name: "sch_created_dt") String? schCreatedDt,
      @JsonKey(name: "product_details") List<ProductDetail>? productDetails});
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
    Object? schId = freezed,
    Object? schName = freezed,
    Object? productIds = freezed,
    Object? schCreditValue = freezed,
    Object? schOffer = freezed,
    Object? schStDt = freezed,
    Object? schEndDt = freezed,
    Object? schStatus = freezed,
    Object? schCreatedDt = freezed,
    Object? productDetails = freezed,
  }) {
    return _then(_value.copyWith(
      schId: freezed == schId
          ? _value.schId
          : schId // ignore: cast_nullable_to_non_nullable
              as String?,
      schName: freezed == schName
          ? _value.schName
          : schName // ignore: cast_nullable_to_non_nullable
              as String?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as String?,
      schCreditValue: freezed == schCreditValue
          ? _value.schCreditValue
          : schCreditValue // ignore: cast_nullable_to_non_nullable
              as String?,
      schOffer: freezed == schOffer
          ? _value.schOffer
          : schOffer // ignore: cast_nullable_to_non_nullable
              as String?,
      schStDt: freezed == schStDt
          ? _value.schStDt
          : schStDt // ignore: cast_nullable_to_non_nullable
              as String?,
      schEndDt: freezed == schEndDt
          ? _value.schEndDt
          : schEndDt // ignore: cast_nullable_to_non_nullable
              as String?,
      schStatus: freezed == schStatus
          ? _value.schStatus
          : schStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      schCreatedDt: freezed == schCreatedDt
          ? _value.schCreatedDt
          : schCreatedDt // ignore: cast_nullable_to_non_nullable
              as String?,
      productDetails: freezed == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductDetail>?,
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
      {@JsonKey(name: "sch_id") String? schId,
      @JsonKey(name: "sch_name") String? schName,
      @JsonKey(name: "product_ids") String? productIds,
      @JsonKey(name: "sch_credit_value") String? schCreditValue,
      @JsonKey(name: "sch_offer") String? schOffer,
      @JsonKey(name: "sch_st_dt") String? schStDt,
      @JsonKey(name: "sch_end_dt") String? schEndDt,
      @JsonKey(name: "sch_status") String? schStatus,
      @JsonKey(name: "sch_created_dt") String? schCreatedDt,
      @JsonKey(name: "product_details") List<ProductDetail>? productDetails});
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
    Object? schId = freezed,
    Object? schName = freezed,
    Object? productIds = freezed,
    Object? schCreditValue = freezed,
    Object? schOffer = freezed,
    Object? schStDt = freezed,
    Object? schEndDt = freezed,
    Object? schStatus = freezed,
    Object? schCreatedDt = freezed,
    Object? productDetails = freezed,
  }) {
    return _then(_$DataImpl(
      schId: freezed == schId
          ? _value.schId
          : schId // ignore: cast_nullable_to_non_nullable
              as String?,
      schName: freezed == schName
          ? _value.schName
          : schName // ignore: cast_nullable_to_non_nullable
              as String?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as String?,
      schCreditValue: freezed == schCreditValue
          ? _value.schCreditValue
          : schCreditValue // ignore: cast_nullable_to_non_nullable
              as String?,
      schOffer: freezed == schOffer
          ? _value.schOffer
          : schOffer // ignore: cast_nullable_to_non_nullable
              as String?,
      schStDt: freezed == schStDt
          ? _value.schStDt
          : schStDt // ignore: cast_nullable_to_non_nullable
              as String?,
      schEndDt: freezed == schEndDt
          ? _value.schEndDt
          : schEndDt // ignore: cast_nullable_to_non_nullable
              as String?,
      schStatus: freezed == schStatus
          ? _value.schStatus
          : schStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      schCreatedDt: freezed == schCreatedDt
          ? _value.schCreatedDt
          : schCreatedDt // ignore: cast_nullable_to_non_nullable
              as String?,
      productDetails: freezed == productDetails
          ? _value._productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "sch_id") this.schId = '',
      @JsonKey(name: "sch_name") this.schName = '',
      @JsonKey(name: "product_ids") this.productIds = '',
      @JsonKey(name: "sch_credit_value") this.schCreditValue = '',
      @JsonKey(name: "sch_offer") this.schOffer = '',
      @JsonKey(name: "sch_st_dt") this.schStDt = '',
      @JsonKey(name: "sch_end_dt") this.schEndDt = '',
      @JsonKey(name: "sch_status") this.schStatus = '',
      @JsonKey(name: "sch_created_dt") this.schCreatedDt = '',
      @JsonKey(name: "product_details")
      final List<ProductDetail>? productDetails = const []})
      : _productDetails = productDetails;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "sch_id")
  final String? schId;
  @override
  @JsonKey(name: "sch_name")
  final String? schName;
  @override
  @JsonKey(name: "product_ids")
  final String? productIds;
  @override
  @JsonKey(name: "sch_credit_value")
  final String? schCreditValue;
  @override
  @JsonKey(name: "sch_offer")
  final String? schOffer;
  @override
  @JsonKey(name: "sch_st_dt")
  final String? schStDt;
  @override
  @JsonKey(name: "sch_end_dt")
  final String? schEndDt;
  @override
  @JsonKey(name: "sch_status")
  final String? schStatus;
  @override
  @JsonKey(name: "sch_created_dt")
  final String? schCreatedDt;
  final List<ProductDetail>? _productDetails;
  @override
  @JsonKey(name: "product_details")
  List<ProductDetail>? get productDetails {
    final value = _productDetails;
    if (value == null) return null;
    if (_productDetails is EqualUnmodifiableListView) return _productDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(schId: $schId, schName: $schName, productIds: $productIds, schCreditValue: $schCreditValue, schOffer: $schOffer, schStDt: $schStDt, schEndDt: $schEndDt, schStatus: $schStatus, schCreatedDt: $schCreatedDt, productDetails: $productDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.schId, schId) || other.schId == schId) &&
            (identical(other.schName, schName) || other.schName == schName) &&
            (identical(other.productIds, productIds) ||
                other.productIds == productIds) &&
            (identical(other.schCreditValue, schCreditValue) ||
                other.schCreditValue == schCreditValue) &&
            (identical(other.schOffer, schOffer) ||
                other.schOffer == schOffer) &&
            (identical(other.schStDt, schStDt) || other.schStDt == schStDt) &&
            (identical(other.schEndDt, schEndDt) ||
                other.schEndDt == schEndDt) &&
            (identical(other.schStatus, schStatus) ||
                other.schStatus == schStatus) &&
            (identical(other.schCreatedDt, schCreatedDt) ||
                other.schCreatedDt == schCreatedDt) &&
            const DeepCollectionEquality()
                .equals(other._productDetails, _productDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schId,
      schName,
      productIds,
      schCreditValue,
      schOffer,
      schStDt,
      schEndDt,
      schStatus,
      schCreatedDt,
      const DeepCollectionEquality().hash(_productDetails));

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
      {@JsonKey(name: "sch_id") final String? schId,
      @JsonKey(name: "sch_name") final String? schName,
      @JsonKey(name: "product_ids") final String? productIds,
      @JsonKey(name: "sch_credit_value") final String? schCreditValue,
      @JsonKey(name: "sch_offer") final String? schOffer,
      @JsonKey(name: "sch_st_dt") final String? schStDt,
      @JsonKey(name: "sch_end_dt") final String? schEndDt,
      @JsonKey(name: "sch_status") final String? schStatus,
      @JsonKey(name: "sch_created_dt") final String? schCreatedDt,
      @JsonKey(name: "product_details")
      final List<ProductDetail>? productDetails}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "sch_id")
  String? get schId;
  @override
  @JsonKey(name: "sch_name")
  String? get schName;
  @override
  @JsonKey(name: "product_ids")
  String? get productIds;
  @override
  @JsonKey(name: "sch_credit_value")
  String? get schCreditValue;
  @override
  @JsonKey(name: "sch_offer")
  String? get schOffer;
  @override
  @JsonKey(name: "sch_st_dt")
  String? get schStDt;
  @override
  @JsonKey(name: "sch_end_dt")
  String? get schEndDt;
  @override
  @JsonKey(name: "sch_status")
  String? get schStatus;
  @override
  @JsonKey(name: "sch_created_dt")
  String? get schCreatedDt;
  @override
  @JsonKey(name: "product_details")
  List<ProductDetail>? get productDetails;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return _ProductDetail.fromJson(json);
}

/// @nodoc
mixin _$ProductDetail {
  @JsonKey(name: "pro_id")
  String? get proId => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_unique_id")
  String? get proUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_name")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_img1")
  String? get proImg1 => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_price")
  String? get proPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_price")
  double? get offerPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_days")
  String? get creditDays => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_packing")
  String? get proPacking => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "scheme_status")
  String? get schemeStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "pro_id") String? proId,
      @JsonKey(name: "pro_unique_id") String? proUniqueId,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "pro_img1") String? proImg1,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "offer_price") double? offerPrice,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "credit_days") String? creditDays,
      @JsonKey(name: "pro_packing") String? proPacking,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "scheme_status") String? schemeStatus});
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proId = freezed,
    Object? proUniqueId = freezed,
    Object? productName = freezed,
    Object? proImg1 = freezed,
    Object? proPrice = freezed,
    Object? offerPrice = freezed,
    Object? categoryId = freezed,
    Object? description = freezed,
    Object? creditDays = freezed,
    Object? proPacking = freezed,
    Object? proPackingSize = freezed,
    Object? categoryName = freezed,
    Object? schemeStatus = freezed,
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
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      proImg1: freezed == proImg1
          ? _value.proImg1
          : proImg1 // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
      proPacking: freezed == proPacking
          ? _value.proPacking
          : proPacking // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      schemeStatus: freezed == schemeStatus
          ? _value.schemeStatus
          : schemeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailImplCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$ProductDetailImplCopyWith(
          _$ProductDetailImpl value, $Res Function(_$ProductDetailImpl) then) =
      __$$ProductDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "pro_id") String? proId,
      @JsonKey(name: "pro_unique_id") String? proUniqueId,
      @JsonKey(name: "product_name") String? productName,
      @JsonKey(name: "pro_img1") String? proImg1,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "offer_price") double? offerPrice,
      @JsonKey(name: "category_id") String? categoryId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "credit_days") String? creditDays,
      @JsonKey(name: "pro_packing") String? proPacking,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "scheme_status") String? schemeStatus});
}

/// @nodoc
class __$$ProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$ProductDetailImpl>
    implements _$$ProductDetailImplCopyWith<$Res> {
  __$$ProductDetailImplCopyWithImpl(
      _$ProductDetailImpl _value, $Res Function(_$ProductDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proId = freezed,
    Object? proUniqueId = freezed,
    Object? productName = freezed,
    Object? proImg1 = freezed,
    Object? proPrice = freezed,
    Object? offerPrice = freezed,
    Object? categoryId = freezed,
    Object? description = freezed,
    Object? creditDays = freezed,
    Object? proPacking = freezed,
    Object? proPackingSize = freezed,
    Object? categoryName = freezed,
    Object? schemeStatus = freezed,
  }) {
    return _then(_$ProductDetailImpl(
      proId: freezed == proId
          ? _value.proId
          : proId // ignore: cast_nullable_to_non_nullable
              as String?,
      proUniqueId: freezed == proUniqueId
          ? _value.proUniqueId
          : proUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      proImg1: freezed == proImg1
          ? _value.proImg1
          : proImg1 // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
      proPacking: freezed == proPacking
          ? _value.proPacking
          : proPacking // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      schemeStatus: freezed == schemeStatus
          ? _value.schemeStatus
          : schemeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailImpl implements _ProductDetail {
  const _$ProductDetailImpl(
      {@JsonKey(name: "pro_id") this.proId = '',
      @JsonKey(name: "pro_unique_id") this.proUniqueId = '',
      @JsonKey(name: "product_name") this.productName = '',
      @JsonKey(name: "pro_img1") this.proImg1 = '',
      @JsonKey(name: "pro_price") this.proPrice = '',
      @JsonKey(name: "offer_price") this.offerPrice = 0.0,
      @JsonKey(name: "category_id") this.categoryId = '',
      @JsonKey(name: "description") this.description = '',
      @JsonKey(name: "credit_days") this.creditDays = '',
      @JsonKey(name: "pro_packing") this.proPacking = '',
      @JsonKey(name: "pro_packing_size") this.proPackingSize = '',
      @JsonKey(name: "category_name") this.categoryName = '',
      @JsonKey(name: "scheme_status") this.schemeStatus = ''});

  factory _$ProductDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailImplFromJson(json);

  @override
  @JsonKey(name: "pro_id")
  final String? proId;
  @override
  @JsonKey(name: "pro_unique_id")
  final String? proUniqueId;
  @override
  @JsonKey(name: "product_name")
  final String? productName;
  @override
  @JsonKey(name: "pro_img1")
  final String? proImg1;
  @override
  @JsonKey(name: "pro_price")
  final String? proPrice;
  @override
  @JsonKey(name: "offer_price")
  final double? offerPrice;
  @override
  @JsonKey(name: "category_id")
  final String? categoryId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "credit_days")
  final String? creditDays;
  @override
  @JsonKey(name: "pro_packing")
  final String? proPacking;
  @override
  @JsonKey(name: "pro_packing_size")
  final String? proPackingSize;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "scheme_status")
  final String? schemeStatus;

  @override
  String toString() {
    return 'ProductDetail(proId: $proId, proUniqueId: $proUniqueId, productName: $productName, proImg1: $proImg1, proPrice: $proPrice, offerPrice: $offerPrice, categoryId: $categoryId, description: $description, creditDays: $creditDays, proPacking: $proPacking, proPackingSize: $proPackingSize, categoryName: $categoryName, schemeStatus: $schemeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailImpl &&
            (identical(other.proId, proId) || other.proId == proId) &&
            (identical(other.proUniqueId, proUniqueId) ||
                other.proUniqueId == proUniqueId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.proImg1, proImg1) || other.proImg1 == proImg1) &&
            (identical(other.proPrice, proPrice) ||
                other.proPrice == proPrice) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.creditDays, creditDays) ||
                other.creditDays == creditDays) &&
            (identical(other.proPacking, proPacking) ||
                other.proPacking == proPacking) &&
            (identical(other.proPackingSize, proPackingSize) ||
                other.proPackingSize == proPackingSize) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.schemeStatus, schemeStatus) ||
                other.schemeStatus == schemeStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      proId,
      proUniqueId,
      productName,
      proImg1,
      proPrice,
      offerPrice,
      categoryId,
      description,
      creditDays,
      proPacking,
      proPackingSize,
      categoryName,
      schemeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      __$$ProductDetailImplCopyWithImpl<_$ProductDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailImplToJson(
      this,
    );
  }
}

abstract class _ProductDetail implements ProductDetail {
  const factory _ProductDetail(
          {@JsonKey(name: "pro_id") final String? proId,
          @JsonKey(name: "pro_unique_id") final String? proUniqueId,
          @JsonKey(name: "product_name") final String? productName,
          @JsonKey(name: "pro_img1") final String? proImg1,
          @JsonKey(name: "pro_price") final String? proPrice,
          @JsonKey(name: "offer_price") final double? offerPrice,
          @JsonKey(name: "category_id") final String? categoryId,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "credit_days") final String? creditDays,
          @JsonKey(name: "pro_packing") final String? proPacking,
          @JsonKey(name: "pro_packing_size") final String? proPackingSize,
          @JsonKey(name: "category_name") final String? categoryName,
          @JsonKey(name: "scheme_status") final String? schemeStatus}) =
      _$ProductDetailImpl;

  factory _ProductDetail.fromJson(Map<String, dynamic> json) =
      _$ProductDetailImpl.fromJson;

  @override
  @JsonKey(name: "pro_id")
  String? get proId;
  @override
  @JsonKey(name: "pro_unique_id")
  String? get proUniqueId;
  @override
  @JsonKey(name: "product_name")
  String? get productName;
  @override
  @JsonKey(name: "pro_img1")
  String? get proImg1;
  @override
  @JsonKey(name: "pro_price")
  String? get proPrice;
  @override
  @JsonKey(name: "offer_price")
  double? get offerPrice;
  @override
  @JsonKey(name: "category_id")
  String? get categoryId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "credit_days")
  String? get creditDays;
  @override
  @JsonKey(name: "pro_packing")
  String? get proPacking;
  @override
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "scheme_status")
  String? get schemeStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
