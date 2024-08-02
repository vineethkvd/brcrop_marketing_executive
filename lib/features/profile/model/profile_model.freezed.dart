// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProfileModelImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.data = const Data()});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final Data? data;

  @override
  String toString() {
    return 'ProfileModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
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
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final Data? data}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'emp_id')
  String? get empId => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_unique_id')
  String? get empUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_name')
  String? get empName => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_mobile')
  String? get empMobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_email')
  String? get empEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_state')
  String? get empState => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_district')
  String? get empDistrict => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_district_code')
  String? get empDistrictCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_user_name')
  String? get empUserName => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_pass')
  String? get empPass => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_area_manager')
  String? get empAreaManager => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_type')
  String? get empType => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_designation')
  String? get empDesignation => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_status')
  String? get empStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'emp_create_dt')
  String? get empCreateDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'des_name')
  String? get desName => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'emp_id') String? empId,
      @JsonKey(name: 'emp_unique_id') String? empUniqueId,
      @JsonKey(name: 'emp_name') String? empName,
      @JsonKey(name: 'emp_mobile') String? empMobile,
      @JsonKey(name: 'emp_email') String? empEmail,
      @JsonKey(name: 'emp_state') String? empState,
      @JsonKey(name: 'emp_district') String? empDistrict,
      @JsonKey(name: 'emp_district_code') String? empDistrictCode,
      @JsonKey(name: 'emp_user_name') String? empUserName,
      @JsonKey(name: 'emp_pass') String? empPass,
      @JsonKey(name: 'emp_area_manager') String? empAreaManager,
      @JsonKey(name: 'emp_type') String? empType,
      @JsonKey(name: 'emp_designation') String? empDesignation,
      @JsonKey(name: 'emp_status') String? empStatus,
      @JsonKey(name: 'emp_create_dt') String? empCreateDt,
      @JsonKey(name: 'des_name') String? desName});
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
    Object? empId = freezed,
    Object? empUniqueId = freezed,
    Object? empName = freezed,
    Object? empMobile = freezed,
    Object? empEmail = freezed,
    Object? empState = freezed,
    Object? empDistrict = freezed,
    Object? empDistrictCode = freezed,
    Object? empUserName = freezed,
    Object? empPass = freezed,
    Object? empAreaManager = freezed,
    Object? empType = freezed,
    Object? empDesignation = freezed,
    Object? empStatus = freezed,
    Object? empCreateDt = freezed,
    Object? desName = freezed,
  }) {
    return _then(_value.copyWith(
      empId: freezed == empId
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String?,
      empUniqueId: freezed == empUniqueId
          ? _value.empUniqueId
          : empUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      empName: freezed == empName
          ? _value.empName
          : empName // ignore: cast_nullable_to_non_nullable
              as String?,
      empMobile: freezed == empMobile
          ? _value.empMobile
          : empMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      empEmail: freezed == empEmail
          ? _value.empEmail
          : empEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      empState: freezed == empState
          ? _value.empState
          : empState // ignore: cast_nullable_to_non_nullable
              as String?,
      empDistrict: freezed == empDistrict
          ? _value.empDistrict
          : empDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      empDistrictCode: freezed == empDistrictCode
          ? _value.empDistrictCode
          : empDistrictCode // ignore: cast_nullable_to_non_nullable
              as String?,
      empUserName: freezed == empUserName
          ? _value.empUserName
          : empUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      empPass: freezed == empPass
          ? _value.empPass
          : empPass // ignore: cast_nullable_to_non_nullable
              as String?,
      empAreaManager: freezed == empAreaManager
          ? _value.empAreaManager
          : empAreaManager // ignore: cast_nullable_to_non_nullable
              as String?,
      empType: freezed == empType
          ? _value.empType
          : empType // ignore: cast_nullable_to_non_nullable
              as String?,
      empDesignation: freezed == empDesignation
          ? _value.empDesignation
          : empDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      empStatus: freezed == empStatus
          ? _value.empStatus
          : empStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      empCreateDt: freezed == empCreateDt
          ? _value.empCreateDt
          : empCreateDt // ignore: cast_nullable_to_non_nullable
              as String?,
      desName: freezed == desName
          ? _value.desName
          : desName // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'emp_id') String? empId,
      @JsonKey(name: 'emp_unique_id') String? empUniqueId,
      @JsonKey(name: 'emp_name') String? empName,
      @JsonKey(name: 'emp_mobile') String? empMobile,
      @JsonKey(name: 'emp_email') String? empEmail,
      @JsonKey(name: 'emp_state') String? empState,
      @JsonKey(name: 'emp_district') String? empDistrict,
      @JsonKey(name: 'emp_district_code') String? empDistrictCode,
      @JsonKey(name: 'emp_user_name') String? empUserName,
      @JsonKey(name: 'emp_pass') String? empPass,
      @JsonKey(name: 'emp_area_manager') String? empAreaManager,
      @JsonKey(name: 'emp_type') String? empType,
      @JsonKey(name: 'emp_designation') String? empDesignation,
      @JsonKey(name: 'emp_status') String? empStatus,
      @JsonKey(name: 'emp_create_dt') String? empCreateDt,
      @JsonKey(name: 'des_name') String? desName});
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
    Object? empId = freezed,
    Object? empUniqueId = freezed,
    Object? empName = freezed,
    Object? empMobile = freezed,
    Object? empEmail = freezed,
    Object? empState = freezed,
    Object? empDistrict = freezed,
    Object? empDistrictCode = freezed,
    Object? empUserName = freezed,
    Object? empPass = freezed,
    Object? empAreaManager = freezed,
    Object? empType = freezed,
    Object? empDesignation = freezed,
    Object? empStatus = freezed,
    Object? empCreateDt = freezed,
    Object? desName = freezed,
  }) {
    return _then(_$DataImpl(
      empId: freezed == empId
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String?,
      empUniqueId: freezed == empUniqueId
          ? _value.empUniqueId
          : empUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      empName: freezed == empName
          ? _value.empName
          : empName // ignore: cast_nullable_to_non_nullable
              as String?,
      empMobile: freezed == empMobile
          ? _value.empMobile
          : empMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      empEmail: freezed == empEmail
          ? _value.empEmail
          : empEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      empState: freezed == empState
          ? _value.empState
          : empState // ignore: cast_nullable_to_non_nullable
              as String?,
      empDistrict: freezed == empDistrict
          ? _value.empDistrict
          : empDistrict // ignore: cast_nullable_to_non_nullable
              as String?,
      empDistrictCode: freezed == empDistrictCode
          ? _value.empDistrictCode
          : empDistrictCode // ignore: cast_nullable_to_non_nullable
              as String?,
      empUserName: freezed == empUserName
          ? _value.empUserName
          : empUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      empPass: freezed == empPass
          ? _value.empPass
          : empPass // ignore: cast_nullable_to_non_nullable
              as String?,
      empAreaManager: freezed == empAreaManager
          ? _value.empAreaManager
          : empAreaManager // ignore: cast_nullable_to_non_nullable
              as String?,
      empType: freezed == empType
          ? _value.empType
          : empType // ignore: cast_nullable_to_non_nullable
              as String?,
      empDesignation: freezed == empDesignation
          ? _value.empDesignation
          : empDesignation // ignore: cast_nullable_to_non_nullable
              as String?,
      empStatus: freezed == empStatus
          ? _value.empStatus
          : empStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      empCreateDt: freezed == empCreateDt
          ? _value.empCreateDt
          : empCreateDt // ignore: cast_nullable_to_non_nullable
              as String?,
      desName: freezed == desName
          ? _value.desName
          : desName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'emp_id') this.empId = '',
      @JsonKey(name: 'emp_unique_id') this.empUniqueId = '',
      @JsonKey(name: 'emp_name') this.empName = '',
      @JsonKey(name: 'emp_mobile') this.empMobile = '',
      @JsonKey(name: 'emp_email') this.empEmail = '',
      @JsonKey(name: 'emp_state') this.empState = '',
      @JsonKey(name: 'emp_district') this.empDistrict = '',
      @JsonKey(name: 'emp_district_code') this.empDistrictCode = '',
      @JsonKey(name: 'emp_user_name') this.empUserName = '',
      @JsonKey(name: 'emp_pass') this.empPass = '',
      @JsonKey(name: 'emp_area_manager') this.empAreaManager = '',
      @JsonKey(name: 'emp_type') this.empType = '',
      @JsonKey(name: 'emp_designation') this.empDesignation = '',
      @JsonKey(name: 'emp_status') this.empStatus = '',
      @JsonKey(name: 'emp_create_dt') this.empCreateDt = '',
      @JsonKey(name: 'des_name') this.desName = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'emp_id')
  final String? empId;
  @override
  @JsonKey(name: 'emp_unique_id')
  final String? empUniqueId;
  @override
  @JsonKey(name: 'emp_name')
  final String? empName;
  @override
  @JsonKey(name: 'emp_mobile')
  final String? empMobile;
  @override
  @JsonKey(name: 'emp_email')
  final String? empEmail;
  @override
  @JsonKey(name: 'emp_state')
  final String? empState;
  @override
  @JsonKey(name: 'emp_district')
  final String? empDistrict;
  @override
  @JsonKey(name: 'emp_district_code')
  final String? empDistrictCode;
  @override
  @JsonKey(name: 'emp_user_name')
  final String? empUserName;
  @override
  @JsonKey(name: 'emp_pass')
  final String? empPass;
  @override
  @JsonKey(name: 'emp_area_manager')
  final String? empAreaManager;
  @override
  @JsonKey(name: 'emp_type')
  final String? empType;
  @override
  @JsonKey(name: 'emp_designation')
  final String? empDesignation;
  @override
  @JsonKey(name: 'emp_status')
  final String? empStatus;
  @override
  @JsonKey(name: 'emp_create_dt')
  final String? empCreateDt;
  @override
  @JsonKey(name: 'des_name')
  final String? desName;

  @override
  String toString() {
    return 'Data(empId: $empId, empUniqueId: $empUniqueId, empName: $empName, empMobile: $empMobile, empEmail: $empEmail, empState: $empState, empDistrict: $empDistrict, empDistrictCode: $empDistrictCode, empUserName: $empUserName, empPass: $empPass, empAreaManager: $empAreaManager, empType: $empType, empDesignation: $empDesignation, empStatus: $empStatus, empCreateDt: $empCreateDt, desName: $desName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.empId, empId) || other.empId == empId) &&
            (identical(other.empUniqueId, empUniqueId) ||
                other.empUniqueId == empUniqueId) &&
            (identical(other.empName, empName) || other.empName == empName) &&
            (identical(other.empMobile, empMobile) ||
                other.empMobile == empMobile) &&
            (identical(other.empEmail, empEmail) ||
                other.empEmail == empEmail) &&
            (identical(other.empState, empState) ||
                other.empState == empState) &&
            (identical(other.empDistrict, empDistrict) ||
                other.empDistrict == empDistrict) &&
            (identical(other.empDistrictCode, empDistrictCode) ||
                other.empDistrictCode == empDistrictCode) &&
            (identical(other.empUserName, empUserName) ||
                other.empUserName == empUserName) &&
            (identical(other.empPass, empPass) || other.empPass == empPass) &&
            (identical(other.empAreaManager, empAreaManager) ||
                other.empAreaManager == empAreaManager) &&
            (identical(other.empType, empType) || other.empType == empType) &&
            (identical(other.empDesignation, empDesignation) ||
                other.empDesignation == empDesignation) &&
            (identical(other.empStatus, empStatus) ||
                other.empStatus == empStatus) &&
            (identical(other.empCreateDt, empCreateDt) ||
                other.empCreateDt == empCreateDt) &&
            (identical(other.desName, desName) || other.desName == desName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      empId,
      empUniqueId,
      empName,
      empMobile,
      empEmail,
      empState,
      empDistrict,
      empDistrictCode,
      empUserName,
      empPass,
      empAreaManager,
      empType,
      empDesignation,
      empStatus,
      empCreateDt,
      desName);

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
      {@JsonKey(name: 'emp_id') final String? empId,
      @JsonKey(name: 'emp_unique_id') final String? empUniqueId,
      @JsonKey(name: 'emp_name') final String? empName,
      @JsonKey(name: 'emp_mobile') final String? empMobile,
      @JsonKey(name: 'emp_email') final String? empEmail,
      @JsonKey(name: 'emp_state') final String? empState,
      @JsonKey(name: 'emp_district') final String? empDistrict,
      @JsonKey(name: 'emp_district_code') final String? empDistrictCode,
      @JsonKey(name: 'emp_user_name') final String? empUserName,
      @JsonKey(name: 'emp_pass') final String? empPass,
      @JsonKey(name: 'emp_area_manager') final String? empAreaManager,
      @JsonKey(name: 'emp_type') final String? empType,
      @JsonKey(name: 'emp_designation') final String? empDesignation,
      @JsonKey(name: 'emp_status') final String? empStatus,
      @JsonKey(name: 'emp_create_dt') final String? empCreateDt,
      @JsonKey(name: 'des_name') final String? desName}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'emp_id')
  String? get empId;
  @override
  @JsonKey(name: 'emp_unique_id')
  String? get empUniqueId;
  @override
  @JsonKey(name: 'emp_name')
  String? get empName;
  @override
  @JsonKey(name: 'emp_mobile')
  String? get empMobile;
  @override
  @JsonKey(name: 'emp_email')
  String? get empEmail;
  @override
  @JsonKey(name: 'emp_state')
  String? get empState;
  @override
  @JsonKey(name: 'emp_district')
  String? get empDistrict;
  @override
  @JsonKey(name: 'emp_district_code')
  String? get empDistrictCode;
  @override
  @JsonKey(name: 'emp_user_name')
  String? get empUserName;
  @override
  @JsonKey(name: 'emp_pass')
  String? get empPass;
  @override
  @JsonKey(name: 'emp_area_manager')
  String? get empAreaManager;
  @override
  @JsonKey(name: 'emp_type')
  String? get empType;
  @override
  @JsonKey(name: 'emp_designation')
  String? get empDesignation;
  @override
  @JsonKey(name: 'emp_status')
  String? get empStatus;
  @override
  @JsonKey(name: 'emp_create_dt')
  String? get empCreateDt;
  @override
  @JsonKey(name: 'des_name')
  String? get desName;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
