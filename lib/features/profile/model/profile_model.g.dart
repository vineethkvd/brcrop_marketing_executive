// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const Data()
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      empId: json['emp_id'] as String? ?? '',
      empUniqueId: json['emp_unique_id'] as String? ?? '',
      empName: json['emp_name'] as String? ?? '',
      empMobile: json['emp_mobile'] as String? ?? '',
      empEmail: json['emp_email'] as String? ?? '',
      empState: json['emp_state'] as String? ?? '',
      empDistrict: json['emp_district'] as String? ?? '',
      empDistrictCode: json['emp_district_code'] as String? ?? '',
      empUserName: json['emp_user_name'] as String? ?? '',
      empPass: json['emp_pass'] as String? ?? '',
      empAreaManager: json['emp_area_manager'] as String? ?? '',
      empType: json['emp_type'] as String? ?? '',
      empDesignation: json['emp_designation'] as String? ?? '',
      empStatus: json['emp_status'] as String? ?? '',
      empCreateDt: json['emp_create_dt'] as String? ?? '',
      desName: json['des_name'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'emp_id': instance.empId,
      'emp_unique_id': instance.empUniqueId,
      'emp_name': instance.empName,
      'emp_mobile': instance.empMobile,
      'emp_email': instance.empEmail,
      'emp_state': instance.empState,
      'emp_district': instance.empDistrict,
      'emp_district_code': instance.empDistrictCode,
      'emp_user_name': instance.empUserName,
      'emp_pass': instance.empPass,
      'emp_area_manager': instance.empAreaManager,
      'emp_type': instance.empType,
      'emp_designation': instance.empDesignation,
      'emp_status': instance.empStatus,
      'emp_create_dt': instance.empCreateDt,
      'des_name': instance.desName,
    };
