// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TransactionModelImplCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$TransactionModelImplCopyWith(_$TransactionModelImpl value,
          $Res Function(_$TransactionModelImpl) then) =
      __$$TransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") List<Data>? data});
}

/// @nodoc
class __$$TransactionModelImplCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$TransactionModelImpl>
    implements _$$TransactionModelImplCopyWith<$Res> {
  __$$TransactionModelImplCopyWithImpl(_$TransactionModelImpl _value,
      $Res Function(_$TransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TransactionModelImpl(
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
class _$TransactionModelImpl implements _TransactionModel {
  const _$TransactionModelImpl(
      {@JsonKey(name: "status") this.status = false,
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "data") final List<Data>? data = const []})
      : _data = data;

  factory _$TransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionModelImplFromJson(json);

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
    return 'TransactionModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionModelImpl &&
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
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      __$$TransactionModelImplCopyWithImpl<_$TransactionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final List<Data>? data}) = _$TransactionModelImpl;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$TransactionModelImpl.fromJson;

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
  _$$TransactionModelImplCopyWith<_$TransactionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "ledg_id")
  String? get ledgId => throw _privateConstructorUsedError;
  @JsonKey(name: "dealer_id")
  String? get dealerId => throw _privateConstructorUsedError;
  @JsonKey(name: "me_id")
  String? get meId => throw _privateConstructorUsedError;
  @JsonKey(name: "ledg_pdf")
  String? get ledgPdf => throw _privateConstructorUsedError;
  @JsonKey(name: "create_date")
  String? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: "d_name")
  String? get dName => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "ledg_id") String? ledgId,
      @JsonKey(name: "dealer_id") String? dealerId,
      @JsonKey(name: "me_id") String? meId,
      @JsonKey(name: "ledg_pdf") String? ledgPdf,
      @JsonKey(name: "create_date") String? createDate,
      @JsonKey(name: "d_name") String? dName});
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
    Object? ledgId = freezed,
    Object? dealerId = freezed,
    Object? meId = freezed,
    Object? ledgPdf = freezed,
    Object? createDate = freezed,
    Object? dName = freezed,
  }) {
    return _then(_value.copyWith(
      ledgId: freezed == ledgId
          ? _value.ledgId
          : ledgId // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      meId: freezed == meId
          ? _value.meId
          : meId // ignore: cast_nullable_to_non_nullable
              as String?,
      ledgPdf: freezed == ledgPdf
          ? _value.ledgPdf
          : ledgPdf // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dName: freezed == dName
          ? _value.dName
          : dName // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "ledg_id") String? ledgId,
      @JsonKey(name: "dealer_id") String? dealerId,
      @JsonKey(name: "me_id") String? meId,
      @JsonKey(name: "ledg_pdf") String? ledgPdf,
      @JsonKey(name: "create_date") String? createDate,
      @JsonKey(name: "d_name") String? dName});
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
    Object? ledgId = freezed,
    Object? dealerId = freezed,
    Object? meId = freezed,
    Object? ledgPdf = freezed,
    Object? createDate = freezed,
    Object? dName = freezed,
  }) {
    return _then(_$DataImpl(
      ledgId: freezed == ledgId
          ? _value.ledgId
          : ledgId // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      meId: freezed == meId
          ? _value.meId
          : meId // ignore: cast_nullable_to_non_nullable
              as String?,
      ledgPdf: freezed == ledgPdf
          ? _value.ledgPdf
          : ledgPdf // ignore: cast_nullable_to_non_nullable
              as String?,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as String?,
      dName: freezed == dName
          ? _value.dName
          : dName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "ledg_id") this.ledgId = '',
      @JsonKey(name: "dealer_id") this.dealerId = '',
      @JsonKey(name: "me_id") this.meId = '',
      @JsonKey(name: "ledg_pdf") this.ledgPdf = '',
      @JsonKey(name: "create_date") this.createDate = '',
      @JsonKey(name: "d_name") this.dName = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "ledg_id")
  final String? ledgId;
  @override
  @JsonKey(name: "dealer_id")
  final String? dealerId;
  @override
  @JsonKey(name: "me_id")
  final String? meId;
  @override
  @JsonKey(name: "ledg_pdf")
  final String? ledgPdf;
  @override
  @JsonKey(name: "create_date")
  final String? createDate;
  @override
  @JsonKey(name: "d_name")
  final String? dName;

  @override
  String toString() {
    return 'Data(ledgId: $ledgId, dealerId: $dealerId, meId: $meId, ledgPdf: $ledgPdf, createDate: $createDate, dName: $dName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.ledgId, ledgId) || other.ledgId == ledgId) &&
            (identical(other.dealerId, dealerId) ||
                other.dealerId == dealerId) &&
            (identical(other.meId, meId) || other.meId == meId) &&
            (identical(other.ledgPdf, ledgPdf) || other.ledgPdf == ledgPdf) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.dName, dName) || other.dName == dName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, ledgId, dealerId, meId, ledgPdf, createDate, dName);

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
      {@JsonKey(name: "ledg_id") final String? ledgId,
      @JsonKey(name: "dealer_id") final String? dealerId,
      @JsonKey(name: "me_id") final String? meId,
      @JsonKey(name: "ledg_pdf") final String? ledgPdf,
      @JsonKey(name: "create_date") final String? createDate,
      @JsonKey(name: "d_name") final String? dName}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "ledg_id")
  String? get ledgId;
  @override
  @JsonKey(name: "dealer_id")
  String? get dealerId;
  @override
  @JsonKey(name: "me_id")
  String? get meId;
  @override
  @JsonKey(name: "ledg_pdf")
  String? get ledgPdf;
  @override
  @JsonKey(name: "create_date")
  String? get createDate;
  @override
  @JsonKey(name: "d_name")
  String? get dName;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
