// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countNtf_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationCountModelImpl _$$NotificationCountModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationCountModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CountData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationCountModelImplToJson(
        _$NotificationCountModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CountDataImpl _$$CountDataImplFromJson(Map<String, dynamic> json) =>
    _$CountDataImpl(
      unseenCount: json['unseen_count'] as String?,
      isSeen: json['isSeen'] as bool? ?? false,
    );

Map<String, dynamic> _$$CountDataImplToJson(_$CountDataImpl instance) =>
    <String, dynamic>{
      'unseen_count': instance.unseenCount,
      'isSeen': instance.isSeen,
    };
