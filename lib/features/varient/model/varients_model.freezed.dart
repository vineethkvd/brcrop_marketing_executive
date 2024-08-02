// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'varients_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VarientsModel _$VarientsModelFromJson(Map<String, dynamic> json) {
  return _VarientsModel.fromJson(json);
}

/// @nodoc
mixin _$VarientsModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VarientsModelCopyWith<VarientsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VarientsModelCopyWith<$Res> {
  factory $VarientsModelCopyWith(
          VarientsModel value, $Res Function(VarientsModel) then) =
      _$VarientsModelCopyWithImpl<$Res, VarientsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class _$VarientsModelCopyWithImpl<$Res, $Val extends VarientsModel>
    implements $VarientsModelCopyWith<$Res> {
  _$VarientsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$VarientsModelImplCopyWith<$Res>
    implements $VarientsModelCopyWith<$Res> {
  factory _$$VarientsModelImplCopyWith(
          _$VarientsModelImpl value, $Res Function(_$VarientsModelImpl) then) =
      __$$VarientsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class __$$VarientsModelImplCopyWithImpl<$Res>
    extends _$VarientsModelCopyWithImpl<$Res, _$VarientsModelImpl>
    implements _$$VarientsModelImplCopyWith<$Res> {
  __$$VarientsModelImplCopyWithImpl(
      _$VarientsModelImpl _value, $Res Function(_$VarientsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VarientsModelImpl(
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
class _$VarientsModelImpl implements _VarientsModel {
  const _$VarientsModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "data") final List<Data>? data})
      : _data = data;

  factory _$VarientsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VarientsModelImplFromJson(json);

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
    return 'VarientsModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VarientsModelImpl &&
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
  _$$VarientsModelImplCopyWith<_$VarientsModelImpl> get copyWith =>
      __$$VarientsModelImplCopyWithImpl<_$VarientsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VarientsModelImplToJson(
      this,
    );
  }
}

abstract class _VarientsModel implements VarientsModel {
  const factory _VarientsModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<Data>? data}) = _$VarientsModelImpl;

  factory _VarientsModel.fromJson(Map<String, dynamic> json) =
      _$VarientsModelImpl.fromJson;

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
  _$$VarientsModelImplCopyWith<_$VarientsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "ver_id")
  String? get verId => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize => throw _privateConstructorUsedError;
  @JsonKey(name: "pro_price")
  String? get proPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "ver_status")
  String? get verStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "create_dt")
  String? get createDt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "ver_id") String? verId,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "ver_status") String? verStatus,
      @JsonKey(name: "create_dt") String? createDt});
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
    Object? verId = freezed,
    Object? productId = freezed,
    Object? proPackingSize = freezed,
    Object? proPrice = freezed,
    Object? verStatus = freezed,
    Object? createDt = freezed,
  }) {
    return _then(_value.copyWith(
      verId: freezed == verId
          ? _value.verId
          : verId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      verStatus: freezed == verStatus
          ? _value.verStatus
          : verStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "ver_id") String? verId,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "pro_packing_size") String? proPackingSize,
      @JsonKey(name: "pro_price") String? proPrice,
      @JsonKey(name: "ver_status") String? verStatus,
      @JsonKey(name: "create_dt") String? createDt});
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
    Object? verId = freezed,
    Object? productId = freezed,
    Object? proPackingSize = freezed,
    Object? proPrice = freezed,
    Object? verStatus = freezed,
    Object? createDt = freezed,
  }) {
    return _then(_$DataImpl(
      verId: freezed == verId
          ? _value.verId
          : verId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      proPackingSize: freezed == proPackingSize
          ? _value.proPackingSize
          : proPackingSize // ignore: cast_nullable_to_non_nullable
              as String?,
      proPrice: freezed == proPrice
          ? _value.proPrice
          : proPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      verStatus: freezed == verStatus
          ? _value.verStatus
          : verStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "ver_id") this.verId = '',
      @JsonKey(name: "product_id") this.productId = '',
      @JsonKey(name: "pro_packing_size") this.proPackingSize = '',
      @JsonKey(name: "pro_price") this.proPrice = '',
      @JsonKey(name: "ver_status") this.verStatus = '',
      @JsonKey(name: "create_dt") this.createDt = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "ver_id")
  final String? verId;
  @override
  @JsonKey(name: "product_id")
  final String? productId;
  @override
  @JsonKey(name: "pro_packing_size")
  final String? proPackingSize;
  @override
  @JsonKey(name: "pro_price")
  final String? proPrice;
  @override
  @JsonKey(name: "ver_status")
  final String? verStatus;
  @override
  @JsonKey(name: "create_dt")
  final String? createDt;

  @override
  String toString() {
    return 'Data(verId: $verId, productId: $productId, proPackingSize: $proPackingSize, proPrice: $proPrice, verStatus: $verStatus, createDt: $createDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.verId, verId) || other.verId == verId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.proPackingSize, proPackingSize) ||
                other.proPackingSize == proPackingSize) &&
            (identical(other.proPrice, proPrice) ||
                other.proPrice == proPrice) &&
            (identical(other.verStatus, verStatus) ||
                other.verStatus == verStatus) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, verId, productId, proPackingSize,
      proPrice, verStatus, createDt);

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
      {@JsonKey(name: "ver_id") final String? verId,
      @JsonKey(name: "product_id") final String? productId,
      @JsonKey(name: "pro_packing_size") final String? proPackingSize,
      @JsonKey(name: "pro_price") final String? proPrice,
      @JsonKey(name: "ver_status") final String? verStatus,
      @JsonKey(name: "create_dt") final String? createDt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "ver_id")
  String? get verId;
  @override
  @JsonKey(name: "product_id")
  String? get productId;
  @override
  @JsonKey(name: "pro_packing_size")
  String? get proPackingSize;
  @override
  @JsonKey(name: "pro_price")
  String? get proPrice;
  @override
  @JsonKey(name: "ver_status")
  String? get verStatus;
  @override
  @JsonKey(name: "create_dt")
  String? get createDt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
