// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

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
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'Data') List<Data>? data});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NotificationModelImpl(
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
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'Data') final List<Data>? data = const []})
      : _data = data;

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<Data>? _data;
  @override
  @JsonKey(name: 'Data')
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NotificationModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
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
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'Data') final List<Data>? data}) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'Data')
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'me_notifi_id')
  String? get notifiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_for_user')
  String? get notifiMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'me_notifi_time')
  String? get msgSentTime => throw _privateConstructorUsedError;
  bool? get isSeen => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'me_notifi_id') String? notifiId,
      @JsonKey(name: 'msg_for_user') String? notifiMsg,
      @JsonKey(name: 'me_notifi_time') String? msgSentTime,
      bool? isSeen});
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
    Object? notifiId = freezed,
    Object? notifiMsg = freezed,
    Object? msgSentTime = freezed,
    Object? isSeen = freezed,
  }) {
    return _then(_value.copyWith(
      notifiId: freezed == notifiId
          ? _value.notifiId
          : notifiId // ignore: cast_nullable_to_non_nullable
              as String?,
      notifiMsg: freezed == notifiMsg
          ? _value.notifiMsg
          : notifiMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      msgSentTime: freezed == msgSentTime
          ? _value.msgSentTime
          : msgSentTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isSeen: freezed == isSeen
          ? _value.isSeen
          : isSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {@JsonKey(name: 'me_notifi_id') String? notifiId,
      @JsonKey(name: 'msg_for_user') String? notifiMsg,
      @JsonKey(name: 'me_notifi_time') String? msgSentTime,
      bool? isSeen});
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
    Object? notifiId = freezed,
    Object? notifiMsg = freezed,
    Object? msgSentTime = freezed,
    Object? isSeen = freezed,
  }) {
    return _then(_$DataImpl(
      notifiId: freezed == notifiId
          ? _value.notifiId
          : notifiId // ignore: cast_nullable_to_non_nullable
              as String?,
      notifiMsg: freezed == notifiMsg
          ? _value.notifiMsg
          : notifiMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      msgSentTime: freezed == msgSentTime
          ? _value.msgSentTime
          : msgSentTime // ignore: cast_nullable_to_non_nullable
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'me_notifi_id') this.notifiId = '',
      @JsonKey(name: 'msg_for_user') this.notifiMsg = '',
      @JsonKey(name: 'me_notifi_time') this.msgSentTime = '',
      this.isSeen = false});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'me_notifi_id')
  final String? notifiId;
  @override
  @JsonKey(name: 'msg_for_user')
  final String? notifiMsg;
  @override
  @JsonKey(name: 'me_notifi_time')
  final String? msgSentTime;
  @override
  @JsonKey()
  final bool? isSeen;

  @override
  String toString() {
    return 'Data(notifiId: $notifiId, notifiMsg: $notifiMsg, msgSentTime: $msgSentTime, isSeen: $isSeen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.notifiId, notifiId) ||
                other.notifiId == notifiId) &&
            (identical(other.notifiMsg, notifiMsg) ||
                other.notifiMsg == notifiMsg) &&
            (identical(other.msgSentTime, msgSentTime) ||
                other.msgSentTime == msgSentTime) &&
            (identical(other.isSeen, isSeen) || other.isSeen == isSeen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, notifiId, notifiMsg, msgSentTime, isSeen);

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
      {@JsonKey(name: 'me_notifi_id') final String? notifiId,
      @JsonKey(name: 'msg_for_user') final String? notifiMsg,
      @JsonKey(name: 'me_notifi_time') final String? msgSentTime,
      final bool? isSeen}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'me_notifi_id')
  String? get notifiId;
  @override
  @JsonKey(name: 'msg_for_user')
  String? get notifiMsg;
  @override
  @JsonKey(name: 'me_notifi_time')
  String? get msgSentTime;
  @override
  bool? get isSeen;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
