// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewNtf_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewNotificationModelImpl _$$ViewNotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ViewNotificationModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$ViewNotificationModelImplToJson(
        _$ViewNotificationModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
