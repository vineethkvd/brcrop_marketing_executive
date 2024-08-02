// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) {
  return _SliderModel.fromJson(json);
}

/// @nodoc
mixin _$SliderModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SliderModelCopyWith<SliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderModelCopyWith<$Res> {
  factory $SliderModelCopyWith(
          SliderModel value, $Res Function(SliderModel) then) =
      _$SliderModelCopyWithImpl<$Res, SliderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<Data>? data});
}

/// @nodoc
class _$SliderModelCopyWithImpl<$Res, $Val extends SliderModel>
    implements $SliderModelCopyWith<$Res> {
  _$SliderModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SliderModelImplCopyWith<$Res>
    implements $SliderModelCopyWith<$Res> {
  factory _$$SliderModelImplCopyWith(
          _$SliderModelImpl value, $Res Function(_$SliderModelImpl) then) =
      __$$SliderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<Data>? data});
}

/// @nodoc
class __$$SliderModelImplCopyWithImpl<$Res>
    extends _$SliderModelCopyWithImpl<$Res, _$SliderModelImpl>
    implements _$$SliderModelImplCopyWith<$Res> {
  __$$SliderModelImplCopyWithImpl(
      _$SliderModelImpl _value, $Res Function(_$SliderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SliderModelImpl(
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
class _$SliderModelImpl implements _SliderModel {
  const _$SliderModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') final List<Data>? data = const []})
      : _data = data;

  factory _$SliderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
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
    return 'SliderModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderModelImpl &&
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
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      __$$SliderModelImplCopyWithImpl<_$SliderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderModelImplToJson(
      this,
    );
  }
}

abstract class _SliderModel implements SliderModel {
  const factory _SliderModel(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final List<Data>? data}) = _$SliderModelImpl;

  factory _SliderModel.fromJson(Map<String, dynamic> json) =
      _$SliderModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 's_id')
  String? get sId => throw _privateConstructorUsedError;
  @JsonKey(name: 'slider_name')
  String? get sliderName => throw _privateConstructorUsedError;
  @JsonKey(name: 'slider_link')
  String? get sliderLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'slider_img')
  String? get sliderImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_dt')
  String? get createdDt => throw _privateConstructorUsedError;
  @JsonKey(name: 's_status')
  String? get sStatus => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 's_id') String? sId,
      @JsonKey(name: 'slider_name') String? sliderName,
      @JsonKey(name: 'slider_link') String? sliderLink,
      @JsonKey(name: 'slider_img') String? sliderImg,
      @JsonKey(name: 'created_dt') String? createdDt,
      @JsonKey(name: 's_status') String? sStatus});
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
    Object? sId = freezed,
    Object? sliderName = freezed,
    Object? sliderLink = freezed,
    Object? sliderImg = freezed,
    Object? createdDt = freezed,
    Object? sStatus = freezed,
  }) {
    return _then(_value.copyWith(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderName: freezed == sliderName
          ? _value.sliderName
          : sliderName // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderLink: freezed == sliderLink
          ? _value.sliderLink
          : sliderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderImg: freezed == sliderImg
          ? _value.sliderImg
          : sliderImg // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDt: freezed == createdDt
          ? _value.createdDt
          : createdDt // ignore: cast_nullable_to_non_nullable
              as String?,
      sStatus: freezed == sStatus
          ? _value.sStatus
          : sStatus // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 's_id') String? sId,
      @JsonKey(name: 'slider_name') String? sliderName,
      @JsonKey(name: 'slider_link') String? sliderLink,
      @JsonKey(name: 'slider_img') String? sliderImg,
      @JsonKey(name: 'created_dt') String? createdDt,
      @JsonKey(name: 's_status') String? sStatus});
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
    Object? sId = freezed,
    Object? sliderName = freezed,
    Object? sliderLink = freezed,
    Object? sliderImg = freezed,
    Object? createdDt = freezed,
    Object? sStatus = freezed,
  }) {
    return _then(_$DataImpl(
      sId: freezed == sId
          ? _value.sId
          : sId // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderName: freezed == sliderName
          ? _value.sliderName
          : sliderName // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderLink: freezed == sliderLink
          ? _value.sliderLink
          : sliderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderImg: freezed == sliderImg
          ? _value.sliderImg
          : sliderImg // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDt: freezed == createdDt
          ? _value.createdDt
          : createdDt // ignore: cast_nullable_to_non_nullable
              as String?,
      sStatus: freezed == sStatus
          ? _value.sStatus
          : sStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 's_id') this.sId = '',
      @JsonKey(name: 'slider_name') this.sliderName = '',
      @JsonKey(name: 'slider_link') this.sliderLink = '',
      @JsonKey(name: 'slider_img') this.sliderImg = '',
      @JsonKey(name: 'created_dt') this.createdDt = '',
      @JsonKey(name: 's_status') this.sStatus = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 's_id')
  final String? sId;
  @override
  @JsonKey(name: 'slider_name')
  final String? sliderName;
  @override
  @JsonKey(name: 'slider_link')
  final String? sliderLink;
  @override
  @JsonKey(name: 'slider_img')
  final String? sliderImg;
  @override
  @JsonKey(name: 'created_dt')
  final String? createdDt;
  @override
  @JsonKey(name: 's_status')
  final String? sStatus;

  @override
  String toString() {
    return 'Data(sId: $sId, sliderName: $sliderName, sliderLink: $sliderLink, sliderImg: $sliderImg, createdDt: $createdDt, sStatus: $sStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.sId, sId) || other.sId == sId) &&
            (identical(other.sliderName, sliderName) ||
                other.sliderName == sliderName) &&
            (identical(other.sliderLink, sliderLink) ||
                other.sliderLink == sliderLink) &&
            (identical(other.sliderImg, sliderImg) ||
                other.sliderImg == sliderImg) &&
            (identical(other.createdDt, createdDt) ||
                other.createdDt == createdDt) &&
            (identical(other.sStatus, sStatus) || other.sStatus == sStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sId, sliderName, sliderLink, sliderImg, createdDt, sStatus);

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
      {@JsonKey(name: 's_id') final String? sId,
      @JsonKey(name: 'slider_name') final String? sliderName,
      @JsonKey(name: 'slider_link') final String? sliderLink,
      @JsonKey(name: 'slider_img') final String? sliderImg,
      @JsonKey(name: 'created_dt') final String? createdDt,
      @JsonKey(name: 's_status') final String? sStatus}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 's_id')
  String? get sId;
  @override
  @JsonKey(name: 'slider_name')
  String? get sliderName;
  @override
  @JsonKey(name: 'slider_link')
  String? get sliderLink;
  @override
  @JsonKey(name: 'slider_img')
  String? get sliderImg;
  @override
  @JsonKey(name: 'created_dt')
  String? get createdDt;
  @override
  @JsonKey(name: 's_status')
  String? get sStatus;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
