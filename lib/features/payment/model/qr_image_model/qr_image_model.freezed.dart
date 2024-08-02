// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QrImageModel _$QrImageModelFromJson(Map<String, dynamic> json) {
  return _QrImageModel.fromJson(json);
}

/// @nodoc
mixin _$QrImageModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'gpay_image')
  String? get gpayImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QrImageModelCopyWith<QrImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrImageModelCopyWith<$Res> {
  factory $QrImageModelCopyWith(
          QrImageModel value, $Res Function(QrImageModel) then) =
      _$QrImageModelCopyWithImpl<$Res, QrImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'gpay_image') String? gpayImage});
}

/// @nodoc
class _$QrImageModelCopyWithImpl<$Res, $Val extends QrImageModel>
    implements $QrImageModelCopyWith<$Res> {
  _$QrImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? gpayImage = freezed,
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
      gpayImage: freezed == gpayImage
          ? _value.gpayImage
          : gpayImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrImageModelImplCopyWith<$Res>
    implements $QrImageModelCopyWith<$Res> {
  factory _$$QrImageModelImplCopyWith(
          _$QrImageModelImpl value, $Res Function(_$QrImageModelImpl) then) =
      __$$QrImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'gpay_image') String? gpayImage});
}

/// @nodoc
class __$$QrImageModelImplCopyWithImpl<$Res>
    extends _$QrImageModelCopyWithImpl<$Res, _$QrImageModelImpl>
    implements _$$QrImageModelImplCopyWith<$Res> {
  __$$QrImageModelImplCopyWithImpl(
      _$QrImageModelImpl _value, $Res Function(_$QrImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? gpayImage = freezed,
  }) {
    return _then(_$QrImageModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      gpayImage: freezed == gpayImage
          ? _value.gpayImage
          : gpayImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QrImageModelImpl implements _QrImageModel {
  const _$QrImageModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'gpay_image') this.gpayImage = ''});

  factory _$QrImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QrImageModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'gpay_image')
  final String? gpayImage;

  @override
  String toString() {
    return 'QrImageModel(status: $status, message: $message, gpayImage: $gpayImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrImageModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.gpayImage, gpayImage) ||
                other.gpayImage == gpayImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, gpayImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrImageModelImplCopyWith<_$QrImageModelImpl> get copyWith =>
      __$$QrImageModelImplCopyWithImpl<_$QrImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QrImageModelImplToJson(
      this,
    );
  }
}

abstract class _QrImageModel implements QrImageModel {
  const factory _QrImageModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'gpay_image') final String? gpayImage}) =
      _$QrImageModelImpl;

  factory _QrImageModel.fromJson(Map<String, dynamic> json) =
      _$QrImageModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'gpay_image')
  String? get gpayImage;
  @override
  @JsonKey(ignore: true)
  _$$QrImageModelImplCopyWith<_$QrImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
