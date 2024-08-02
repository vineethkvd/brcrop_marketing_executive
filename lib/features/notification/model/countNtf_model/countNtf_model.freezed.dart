// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countNtf_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationCountModel _$NotificationCountModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationCountModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationCountModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CountData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCountModelCopyWith<NotificationCountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCountModelCopyWith<$Res> {
  factory $NotificationCountModelCopyWith(NotificationCountModel value,
          $Res Function(NotificationCountModel) then) =
      _$NotificationCountModelCopyWithImpl<$Res, NotificationCountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CountData? data});

  $CountDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotificationCountModelCopyWithImpl<$Res,
        $Val extends NotificationCountModel>
    implements $NotificationCountModelCopyWith<$Res> {
  _$NotificationCountModelCopyWithImpl(this._value, this._then);

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
              as CountData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CountDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CountDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationCountModelImplCopyWith<$Res>
    implements $NotificationCountModelCopyWith<$Res> {
  factory _$$NotificationCountModelImplCopyWith(
          _$NotificationCountModelImpl value,
          $Res Function(_$NotificationCountModelImpl) then) =
      __$$NotificationCountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CountData? data});

  @override
  $CountDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$NotificationCountModelImplCopyWithImpl<$Res>
    extends _$NotificationCountModelCopyWithImpl<$Res,
        _$NotificationCountModelImpl>
    implements _$$NotificationCountModelImplCopyWith<$Res> {
  __$$NotificationCountModelImplCopyWithImpl(
      _$NotificationCountModelImpl _value,
      $Res Function(_$NotificationCountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NotificationCountModelImpl(
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
              as CountData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationCountModelImpl implements _NotificationCountModel {
  const _$NotificationCountModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$NotificationCountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationCountModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final CountData? data;

  @override
  String toString() {
    return 'NotificationCountModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationCountModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationCountModelImplCopyWith<_$NotificationCountModelImpl>
      get copyWith => __$$NotificationCountModelImplCopyWithImpl<
          _$NotificationCountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationCountModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationCountModel implements NotificationCountModel {
  const factory _NotificationCountModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'data') final CountData? data}) =
      _$NotificationCountModelImpl;

  factory _NotificationCountModel.fromJson(Map<String, dynamic> json) =
      _$NotificationCountModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  CountData? get data;
  @override
  @JsonKey(ignore: true)
  _$$NotificationCountModelImplCopyWith<_$NotificationCountModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CountData _$CountDataFromJson(Map<String, dynamic> json) {
  return _CountData.fromJson(json);
}

/// @nodoc
mixin _$CountData {
  @JsonKey(name: 'unseen_count')
  String? get unseenCount => throw _privateConstructorUsedError;
  bool? get isSeen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountDataCopyWith<CountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountDataCopyWith<$Res> {
  factory $CountDataCopyWith(CountData value, $Res Function(CountData) then) =
      _$CountDataCopyWithImpl<$Res, CountData>;
  @useResult
  $Res call({@JsonKey(name: 'unseen_count') String? unseenCount, bool? isSeen});
}

/// @nodoc
class _$CountDataCopyWithImpl<$Res, $Val extends CountData>
    implements $CountDataCopyWith<$Res> {
  _$CountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseenCount = freezed,
    Object? isSeen = freezed,
  }) {
    return _then(_value.copyWith(
      unseenCount: freezed == unseenCount
          ? _value.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountDataImplCopyWith<$Res>
    implements $CountDataCopyWith<$Res> {
  factory _$$CountDataImplCopyWith(
          _$CountDataImpl value, $Res Function(_$CountDataImpl) then) =
      __$$CountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'unseen_count') String? unseenCount, bool? isSeen});
}

/// @nodoc
class __$$CountDataImplCopyWithImpl<$Res>
    extends _$CountDataCopyWithImpl<$Res, _$CountDataImpl>
    implements _$$CountDataImplCopyWith<$Res> {
  __$$CountDataImplCopyWithImpl(
      _$CountDataImpl _value, $Res Function(_$CountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unseenCount = freezed,
    Object? isSeen = freezed,
  }) {
    return _then(_$CountDataImpl(
      unseenCount: freezed == unseenCount
          ? _value.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountDataImpl implements _CountData {
  const _$CountDataImpl(
      {@JsonKey(name: 'unseen_count') this.unseenCount, this.isSeen = false});

  factory _$CountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountDataImplFromJson(json);

  @override
  @JsonKey(name: 'unseen_count')
  final String? unseenCount;
  @override
  @JsonKey()
  final bool? isSeen;

  @override
  String toString() {
    return 'CountData(unseenCount: $unseenCount, isSeen: $isSeen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountDataImpl &&
            (identical(other.unseenCount, unseenCount) ||
                other.unseenCount == unseenCount) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, unseenCount, isSeen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountDataImplCopyWith<_$CountDataImpl> get copyWith =>
      __$$CountDataImplCopyWithImpl<_$CountDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountDataImplToJson(
      this,
    );
  }
}

abstract class _CountData implements CountData {
  const factory _CountData(
      {@JsonKey(name: 'unseen_count') final String? unseenCount,
      final bool? isSeen}) = _$CountDataImpl;

  factory _CountData.fromJson(Map<String, dynamic> json) =
      _$CountDataImpl.fromJson;

  @override
  @JsonKey(name: 'unseen_count')
  String? get unseenCount;
  @override
  bool? get isSeen;
  @override
  @JsonKey(ignore: true)
  _$$CountDataImplCopyWith<_$CountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
