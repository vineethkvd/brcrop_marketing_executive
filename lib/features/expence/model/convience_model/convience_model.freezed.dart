// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'convience_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConvienceModel _$ConvienceModelFromJson(Map<String, dynamic> json) {
  return _ConvienceModel.fromJson(json);
}

/// @nodoc
mixin _$ConvienceModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvienceModelCopyWith<ConvienceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvienceModelCopyWith<$Res> {
  factory $ConvienceModelCopyWith(
          ConvienceModel value, $Res Function(ConvienceModel) then) =
      _$ConvienceModelCopyWithImpl<$Res, ConvienceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<Data>? data});
}

/// @nodoc
class _$ConvienceModelCopyWithImpl<$Res, $Val extends ConvienceModel>
    implements $ConvienceModelCopyWith<$Res> {
  _$ConvienceModelCopyWithImpl(this._value, this._then);

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
              as String?,
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
abstract class _$$ConvienceModelImplCopyWith<$Res>
    implements $ConvienceModelCopyWith<$Res> {
  factory _$$ConvienceModelImplCopyWith(_$ConvienceModelImpl value,
          $Res Function(_$ConvienceModelImpl) then) =
      __$$ConvienceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<Data>? data});
}

/// @nodoc
class __$$ConvienceModelImplCopyWithImpl<$Res>
    extends _$ConvienceModelCopyWithImpl<$Res, _$ConvienceModelImpl>
    implements _$$ConvienceModelImplCopyWith<$Res> {
  __$$ConvienceModelImplCopyWithImpl(
      _$ConvienceModelImpl _value, $Res Function(_$ConvienceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ConvienceModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ConvienceModelImpl implements _ConvienceModel {
  const _$ConvienceModelImpl(
      {@JsonKey(name: 'status') this.status = 'Failed',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') final List<Data>? data = const []})
      : _data = data;

  factory _$ConvienceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConvienceModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<Data>? _data;
  @override
  @JsonKey(name: 'data')
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConvienceModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvienceModelImpl &&
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
  _$$ConvienceModelImplCopyWith<_$ConvienceModelImpl> get copyWith =>
      __$$ConvienceModelImplCopyWithImpl<_$ConvienceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConvienceModelImplToJson(
      this,
    );
  }
}

abstract class _ConvienceModel implements ConvienceModel {
  const factory _ConvienceModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final List<Data>? data}) = _$ConvienceModelImpl;

  factory _ConvienceModel.fromJson(Map<String, dynamic> json) =
      _$ConvienceModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ConvienceModelImplCopyWith<_$ConvienceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'exp_id')
  String? get expId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exp_name')
  String? get expName => throw _privateConstructorUsedError;
  @JsonKey(name: 'exp_amt')
  String? get expAmt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'exp_id') String? expId,
      @JsonKey(name: 'exp_name') String? expName,
      @JsonKey(name: 'exp_amt') String? expAmt});
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
    Object? expId = freezed,
    Object? expName = freezed,
    Object? expAmt = freezed,
  }) {
    return _then(_value.copyWith(
      expId: freezed == expId
          ? _value.expId
          : expId // ignore: cast_nullable_to_non_nullable
              as String?,
      expName: freezed == expName
          ? _value.expName
          : expName // ignore: cast_nullable_to_non_nullable
              as String?,
      expAmt: freezed == expAmt
          ? _value.expAmt
          : expAmt // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'exp_id') String? expId,
      @JsonKey(name: 'exp_name') String? expName,
      @JsonKey(name: 'exp_amt') String? expAmt});
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
    Object? expId = freezed,
    Object? expName = freezed,
    Object? expAmt = freezed,
  }) {
    return _then(_$DataImpl(
      expId: freezed == expId
          ? _value.expId
          : expId // ignore: cast_nullable_to_non_nullable
              as String?,
      expName: freezed == expName
          ? _value.expName
          : expName // ignore: cast_nullable_to_non_nullable
              as String?,
      expAmt: freezed == expAmt
          ? _value.expAmt
          : expAmt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'exp_id') this.expId = 'Failed',
      @JsonKey(name: 'exp_name') this.expName = '',
      @JsonKey(name: 'exp_amt') this.expAmt = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'exp_id')
  final String? expId;
  @override
  @JsonKey(name: 'exp_name')
  final String? expName;
  @override
  @JsonKey(name: 'exp_amt')
  final String? expAmt;

  @override
  String toString() {
    return 'Data(expId: $expId, expName: $expName, expAmt: $expAmt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.expId, expId) || other.expId == expId) &&
            (identical(other.expName, expName) || other.expName == expName) &&
            (identical(other.expAmt, expAmt) || other.expAmt == expAmt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expId, expName, expAmt);

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
      {@JsonKey(name: 'exp_id') final String? expId,
      @JsonKey(name: 'exp_name') final String? expName,
      @JsonKey(name: 'exp_amt') final String? expAmt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'exp_id')
  String? get expId;
  @override
  @JsonKey(name: 'exp_name')
  String? get expName;
  @override
  @JsonKey(name: 'exp_amt')
  String? get expAmt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
