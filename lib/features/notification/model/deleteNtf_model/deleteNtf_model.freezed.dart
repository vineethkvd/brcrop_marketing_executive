// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deleteNtf_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteNotificationModel _$DeleteNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteNotificationModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteNotificationModelCopyWith<DeleteNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteNotificationModelCopyWith<$Res> {
  factory $DeleteNotificationModelCopyWith(DeleteNotificationModel value,
          $Res Function(DeleteNotificationModel) then) =
      _$DeleteNotificationModelCopyWithImpl<$Res, DeleteNotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$DeleteNotificationModelCopyWithImpl<$Res,
        $Val extends DeleteNotificationModel>
    implements $DeleteNotificationModelCopyWith<$Res> {
  _$DeleteNotificationModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteNotificationModelImplCopyWith<$Res>
    implements $DeleteNotificationModelCopyWith<$Res> {
  factory _$$DeleteNotificationModelImplCopyWith(
          _$DeleteNotificationModelImpl value,
          $Res Function(_$DeleteNotificationModelImpl) then) =
      __$$DeleteNotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$DeleteNotificationModelImplCopyWithImpl<$Res>
    extends _$DeleteNotificationModelCopyWithImpl<$Res,
        _$DeleteNotificationModelImpl>
    implements _$$DeleteNotificationModelImplCopyWith<$Res> {
  __$$DeleteNotificationModelImplCopyWithImpl(
      _$DeleteNotificationModelImpl _value,
      $Res Function(_$DeleteNotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DeleteNotificationModelImpl(
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
class _$DeleteNotificationModelImpl implements _DeleteNotificationModel {
  const _$DeleteNotificationModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = ''});

  factory _$DeleteNotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteNotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'DeleteNotificationModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationModelImplCopyWith<_$DeleteNotificationModelImpl>
      get copyWith => __$$DeleteNotificationModelImplCopyWithImpl<
          _$DeleteNotificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteNotificationModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteNotificationModel implements DeleteNotificationModel {
  const factory _DeleteNotificationModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message}) =
      _$DeleteNotificationModelImpl;

  factory _DeleteNotificationModel.fromJson(Map<String, dynamic> json) =
      _$DeleteNotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteNotificationModelImplCopyWith<_$DeleteNotificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
