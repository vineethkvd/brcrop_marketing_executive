// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      notifiId: json['me_notifi_id'] as String? ?? '',
      notifiMsg: json['msg_for_user'] as String? ?? '',
      msgSentTime: json['me_notifi_time'] as String? ?? '',
      isSeen: json['isSeen'] as bool? ?? false,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'me_notifi_id': instance.notifiId,
      'msg_for_user': instance.notifiMsg,
      'me_notifi_time': instance.msgSentTime,
      'isSeen': instance.isSeen,
    };
