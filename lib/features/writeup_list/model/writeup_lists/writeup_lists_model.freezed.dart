// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'writeup_lists_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WriteupListsModel _$WriteupListsModelFromJson(Map<String, dynamic> json) {
  return _WriteupListsModel.fromJson(json);
}

/// @nodoc
mixin _$WriteupListsModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'roport_writeup')
  List<ReportWriteUP>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WriteupListsModelCopyWith<WriteupListsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WriteupListsModelCopyWith<$Res> {
  factory $WriteupListsModelCopyWith(
          WriteupListsModel value, $Res Function(WriteupListsModel) then) =
      _$WriteupListsModelCopyWithImpl<$Res, WriteupListsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'roport_writeup') List<ReportWriteUP>? data});
}

/// @nodoc
class _$WriteupListsModelCopyWithImpl<$Res, $Val extends WriteupListsModel>
    implements $WriteupListsModelCopyWith<$Res> {
  _$WriteupListsModelCopyWithImpl(this._value, this._then);

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
              as List<ReportWriteUP>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WriteupListsModelImplCopyWith<$Res>
    implements $WriteupListsModelCopyWith<$Res> {
  factory _$$WriteupListsModelImplCopyWith(_$WriteupListsModelImpl value,
          $Res Function(_$WriteupListsModelImpl) then) =
      __$$WriteupListsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'roport_writeup') List<ReportWriteUP>? data});
}

/// @nodoc
class __$$WriteupListsModelImplCopyWithImpl<$Res>
    extends _$WriteupListsModelCopyWithImpl<$Res, _$WriteupListsModelImpl>
    implements _$$WriteupListsModelImplCopyWith<$Res> {
  __$$WriteupListsModelImplCopyWithImpl(_$WriteupListsModelImpl _value,
      $Res Function(_$WriteupListsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WriteupListsModelImpl(
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
              as List<ReportWriteUP>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WriteupListsModelImpl implements _WriteupListsModel {
  const _$WriteupListsModelImpl(
      {@JsonKey(name: 'status') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'roport_writeup')
      final List<ReportWriteUP>? data = const []})
      : _data = data;

  factory _$WriteupListsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WriteupListsModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<ReportWriteUP>? _data;
  @override
  @JsonKey(name: 'roport_writeup')
  List<ReportWriteUP>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WriteupListsModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteupListsModelImpl &&
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
  _$$WriteupListsModelImplCopyWith<_$WriteupListsModelImpl> get copyWith =>
      __$$WriteupListsModelImplCopyWithImpl<_$WriteupListsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WriteupListsModelImplToJson(
      this,
    );
  }
}

abstract class _WriteupListsModel implements WriteupListsModel {
  const factory _WriteupListsModel(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'roport_writeup') final List<ReportWriteUP>? data}) =
      _$WriteupListsModelImpl;

  factory _WriteupListsModel.fromJson(Map<String, dynamic> json) =
      _$WriteupListsModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'roport_writeup')
  List<ReportWriteUP>? get data;
  @override
  @JsonKey(ignore: true)
  _$$WriteupListsModelImplCopyWith<_$WriteupListsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportWriteUP _$ReportWriteUPFromJson(Map<String, dynamic> json) {
  return _ReportWriteUP.fromJson(json);
}

/// @nodoc
mixin _$ReportWriteUP {
  @JsonKey(name: 'writeup_id')
  String? get writeupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'me_id')
  String? get meId => throw _privateConstructorUsedError;
  @JsonKey(name: 'writeup')
  String? get writeUp => throw _privateConstructorUsedError;
  @JsonKey(name: 'creat_dt')
  String? get creatDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_dt')
  String? get updateDt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportWriteUPCopyWith<ReportWriteUP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportWriteUPCopyWith<$Res> {
  factory $ReportWriteUPCopyWith(
          ReportWriteUP value, $Res Function(ReportWriteUP) then) =
      _$ReportWriteUPCopyWithImpl<$Res, ReportWriteUP>;
  @useResult
  $Res call(
      {@JsonKey(name: 'writeup_id') String? writeupId,
      @JsonKey(name: 'me_id') String? meId,
      @JsonKey(name: 'writeup') String? writeUp,
      @JsonKey(name: 'creat_dt') String? creatDt,
      @JsonKey(name: 'update_dt') String? updateDt});
}

/// @nodoc
class _$ReportWriteUPCopyWithImpl<$Res, $Val extends ReportWriteUP>
    implements $ReportWriteUPCopyWith<$Res> {
  _$ReportWriteUPCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? writeupId = freezed,
    Object? meId = freezed,
    Object? writeUp = freezed,
    Object? creatDt = freezed,
    Object? updateDt = freezed,
  }) {
    return _then(_value.copyWith(
      writeupId: freezed == writeupId
          ? _value.writeupId
          : writeupId // ignore: cast_nullable_to_non_nullable
              as String?,
      meId: freezed == meId
          ? _value.meId
          : meId // ignore: cast_nullable_to_non_nullable
              as String?,
      writeUp: freezed == writeUp
          ? _value.writeUp
          : writeUp // ignore: cast_nullable_to_non_nullable
              as String?,
      creatDt: freezed == creatDt
          ? _value.creatDt
          : creatDt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportWriteUPImplCopyWith<$Res>
    implements $ReportWriteUPCopyWith<$Res> {
  factory _$$ReportWriteUPImplCopyWith(
          _$ReportWriteUPImpl value, $Res Function(_$ReportWriteUPImpl) then) =
      __$$ReportWriteUPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'writeup_id') String? writeupId,
      @JsonKey(name: 'me_id') String? meId,
      @JsonKey(name: 'writeup') String? writeUp,
      @JsonKey(name: 'creat_dt') String? creatDt,
      @JsonKey(name: 'update_dt') String? updateDt});
}

/// @nodoc
class __$$ReportWriteUPImplCopyWithImpl<$Res>
    extends _$ReportWriteUPCopyWithImpl<$Res, _$ReportWriteUPImpl>
    implements _$$ReportWriteUPImplCopyWith<$Res> {
  __$$ReportWriteUPImplCopyWithImpl(
      _$ReportWriteUPImpl _value, $Res Function(_$ReportWriteUPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? writeupId = freezed,
    Object? meId = freezed,
    Object? writeUp = freezed,
    Object? creatDt = freezed,
    Object? updateDt = freezed,
  }) {
    return _then(_$ReportWriteUPImpl(
      writeupId: freezed == writeupId
          ? _value.writeupId
          : writeupId // ignore: cast_nullable_to_non_nullable
              as String?,
      meId: freezed == meId
          ? _value.meId
          : meId // ignore: cast_nullable_to_non_nullable
              as String?,
      writeUp: freezed == writeUp
          ? _value.writeUp
          : writeUp // ignore: cast_nullable_to_non_nullable
              as String?,
      creatDt: freezed == creatDt
          ? _value.creatDt
          : creatDt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportWriteUPImpl implements _ReportWriteUP {
  const _$ReportWriteUPImpl(
      {@JsonKey(name: 'writeup_id') this.writeupId = '',
      @JsonKey(name: 'me_id') this.meId = '',
      @JsonKey(name: 'writeup') this.writeUp = '',
      @JsonKey(name: 'creat_dt') this.creatDt = '',
      @JsonKey(name: 'update_dt') this.updateDt = ''});

  factory _$ReportWriteUPImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportWriteUPImplFromJson(json);

  @override
  @JsonKey(name: 'writeup_id')
  final String? writeupId;
  @override
  @JsonKey(name: 'me_id')
  final String? meId;
  @override
  @JsonKey(name: 'writeup')
  final String? writeUp;
  @override
  @JsonKey(name: 'creat_dt')
  final String? creatDt;
  @override
  @JsonKey(name: 'update_dt')
  final String? updateDt;

  @override
  String toString() {
    return 'ReportWriteUP(writeupId: $writeupId, meId: $meId, writeUp: $writeUp, creatDt: $creatDt, updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportWriteUPImpl &&
            (identical(other.writeupId, writeupId) ||
                other.writeupId == writeupId) &&
            (identical(other.meId, meId) || other.meId == meId) &&
            (identical(other.writeUp, writeUp) || other.writeUp == writeUp) &&
            (identical(other.creatDt, creatDt) || other.creatDt == creatDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, writeupId, meId, writeUp, creatDt, updateDt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportWriteUPImplCopyWith<_$ReportWriteUPImpl> get copyWith =>
      __$$ReportWriteUPImplCopyWithImpl<_$ReportWriteUPImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportWriteUPImplToJson(
      this,
    );
  }
}

abstract class _ReportWriteUP implements ReportWriteUP {
  const factory _ReportWriteUP(
          {@JsonKey(name: 'writeup_id') final String? writeupId,
          @JsonKey(name: 'me_id') final String? meId,
          @JsonKey(name: 'writeup') final String? writeUp,
          @JsonKey(name: 'creat_dt') final String? creatDt,
          @JsonKey(name: 'update_dt') final String? updateDt}) =
      _$ReportWriteUPImpl;

  factory _ReportWriteUP.fromJson(Map<String, dynamic> json) =
      _$ReportWriteUPImpl.fromJson;

  @override
  @JsonKey(name: 'writeup_id')
  String? get writeupId;
  @override
  @JsonKey(name: 'me_id')
  String? get meId;
  @override
  @JsonKey(name: 'writeup')
  String? get writeUp;
  @override
  @JsonKey(name: 'creat_dt')
  String? get creatDt;
  @override
  @JsonKey(name: 'update_dt')
  String? get updateDt;
  @override
  @JsonKey(ignore: true)
  _$$ReportWriteUPImplCopyWith<_$ReportWriteUPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
