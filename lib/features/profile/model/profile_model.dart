import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';
@freezed
class ProfileModel with _$ProfileModel{
  const factory ProfileModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') @Default(Data()) Data? data,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}
@freezed
class Data with _$Data{
  const factory Data({
    @JsonKey(name: 'emp_id') @Default('') String? empId,
    @JsonKey(name: 'emp_unique_id') @Default('') String? empUniqueId,
    @JsonKey(name: 'emp_name') @Default('') String? empName,
    @JsonKey(name: 'emp_mobile') @Default('') String? empMobile,
    @JsonKey(name: 'emp_email') @Default('') String? empEmail,
    @JsonKey(name: 'emp_state') @Default('') String? empState,
    @JsonKey(name: 'emp_district') @Default('') String? empDistrict,
    @JsonKey(name: 'emp_district_code') @Default('') String? empDistrictCode,
    @JsonKey(name: 'emp_user_name') @Default('') String? empUserName,
    @JsonKey(name: 'emp_pass') @Default('') String? empPass,
    @JsonKey(name: 'emp_area_manager') @Default('') String? empAreaManager,
    @JsonKey(name: 'emp_type') @Default('') String? empType,
    @JsonKey(name: 'emp_designation') @Default('') String? empDesignation,
    @JsonKey(name: 'emp_status') @Default('') String? empStatus,
    @JsonKey(name: 'emp_create_dt') @Default('') String? empCreateDt,
    @JsonKey(name: 'des_name') @Default('') String? desName,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}