// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteNtf_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteNotificationModelImpl _$$DeleteNotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteNotificationModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$DeleteNotificationModelImplToJson(
        _$DeleteNotificationModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
