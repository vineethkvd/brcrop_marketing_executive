// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'writeup_lists_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WriteupListsModelImpl _$$WriteupListsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteupListsModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['roport_writeup'] as List<dynamic>?)
              ?.map((e) => ReportWriteUP.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WriteupListsModelImplToJson(
        _$WriteupListsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'roport_writeup': instance.data,
    };

_$ReportWriteUPImpl _$$ReportWriteUPImplFromJson(Map<String, dynamic> json) =>
    _$ReportWriteUPImpl(
      writeupId: json['writeup_id'] as String? ?? '',
      meId: json['me_id'] as String? ?? '',
      writeUp: json['writeup'] as String? ?? '',
      creatDt: json['creat_dt'] as String? ?? '',
      updateDt: json['update_dt'] as String? ?? '',
    );

Map<String, dynamic> _$$ReportWriteUPImplToJson(_$ReportWriteUPImpl instance) =>
    <String, dynamic>{
      'writeup_id': instance.writeupId,
      'me_id': instance.meId,
      'writeup': instance.writeUp,
      'creat_dt': instance.creatDt,
      'update_dt': instance.updateDt,
    };
