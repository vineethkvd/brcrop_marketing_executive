// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soilTest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SoilTestModel _$SoilTestModelFromJson(Map<String, dynamic> json) {
  return _SoilTestModel.fromJson(json);
}

/// @nodoc
mixin _$SoilTestModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoilTestModelCopyWith<SoilTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoilTestModelCopyWith<$Res> {
  factory $SoilTestModelCopyWith(
          SoilTestModel value, $Res Function(SoilTestModel) then) =
      _$SoilTestModelCopyWithImpl<$Res, SoilTestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$SoilTestModelCopyWithImpl<$Res, $Val extends SoilTestModel>
    implements $SoilTestModelCopyWith<$Res> {
  _$SoilTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoilTestModelImplCopyWith<$Res>
    implements $SoilTestModelCopyWith<$Res> {
  factory _$$SoilTestModelImplCopyWith(
          _$SoilTestModelImpl value, $Res Function(_$SoilTestModelImpl) then) =
      __$$SoilTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$SoilTestModelImplCopyWithImpl<$Res>
    extends _$SoilTestModelCopyWithImpl<$Res, _$SoilTestModelImpl>
    implements _$$SoilTestModelImplCopyWith<$Res> {
  __$$SoilTestModelImplCopyWithImpl(
      _$SoilTestModelImpl _value, $Res Function(_$SoilTestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$SoilTestModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoilTestModelImpl implements _SoilTestModel {
  const _$SoilTestModelImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = ''});

  factory _$SoilTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoilTestModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'SoilTestModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoilTestModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoilTestModelImplCopyWith<_$SoilTestModelImpl> get copyWith =>
      __$$SoilTestModelImplCopyWithImpl<_$SoilTestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoilTestModelImplToJson(
      this,
    );
  }
}

abstract class _SoilTestModel implements SoilTestModel {
  const factory _SoilTestModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message}) = _$SoilTestModelImpl;

  factory _SoilTestModel.fromJson(Map<String, dynamic> json) =
      _$SoilTestModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SoilTestModelImplCopyWith<_$SoilTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
