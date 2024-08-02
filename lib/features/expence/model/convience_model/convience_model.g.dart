// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConvienceModelImpl _$$ConvienceModelImplFromJson(Map<String, dynamic> json) =>
    _$ConvienceModelImpl(
      status: json['status'] as String? ?? 'Failed',
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ConvienceModelImplToJson(
        _$ConvienceModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      expId: json['exp_id'] as String? ?? 'Failed',
      expName: json['exp_name'] as String? ?? '',
      expAmt: json['exp_amt'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'exp_id': instance.expId,
      'exp_name': instance.expName,
      'exp_amt': instance.expAmt,
    };
