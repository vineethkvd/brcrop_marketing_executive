// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'viewNtf_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewNotificationModel _$ViewNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _ViewNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$ViewNotificationModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewNotificationModelCopyWith<ViewNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewNotificationModelCopyWith<$Res> {
  factory $ViewNotificationModelCopyWith(ViewNotificationModel value,
          $Res Function(ViewNotificationModel) then) =
      _$ViewNotificationModelCopyWithImpl<$Res, ViewNotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ViewNotificationModelCopyWithImpl<$Res,
        $Val extends ViewNotificationModel>
    implements $ViewNotificationModelCopyWith<$Res> {
  _$ViewNotificationModelCopyWithImpl(this._value, this._then);

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
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewNotificationModelImplCopyWith<$Res>
    implements $ViewNotificationModelCopyWith<$Res> {
  factory _$$ViewNotificationModelImplCopyWith(
          _$ViewNotificationModelImpl value,
          $Res Function(_$ViewNotificationModelImpl) then) =
      __$$ViewNotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ViewNotificationModelImplCopyWithImpl<$Res>
    extends _$ViewNotificationModelCopyWithImpl<$Res,
        _$ViewNotificationModelImpl>
    implements _$$ViewNotificationModelImplCopyWith<$Res> {
  __$$ViewNotificationModelImplCopyWithImpl(_$ViewNotificationModelImpl _value,
      $Res Function(_$ViewNotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ViewNotificationModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewNotificationModelImpl implements _ViewNotificationModel {
  const _$ViewNotificationModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = ''});

  factory _$ViewNotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewNotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ViewNotificationModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewNotificationModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewNotificationModelImplCopyWith<_$ViewNotificationModelImpl>
      get copyWith => __$$ViewNotificationModelImplCopyWithImpl<
          _$ViewNotificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewNotificationModelImplToJson(
      this,
    );
  }
}

abstract class _ViewNotificationModel implements ViewNotificationModel {
  const factory _ViewNotificationModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message}) =
      _$ViewNotificationModelImpl;

  factory _ViewNotificationModel.fromJson(Map<String, dynamic> json) =
      _$ViewNotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ViewNotificationModelImplCopyWith<_$ViewNotificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
