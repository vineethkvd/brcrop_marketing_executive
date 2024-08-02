// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderModelImpl _$$SliderModelImplFromJson(Map<String, dynamic> json) =>
    _$SliderModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SliderModelImplToJson(_$SliderModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sId: json['s_id'] as String? ?? '',
      sliderName: json['slider_name'] as String? ?? '',
      sliderLink: json['slider_link'] as String? ?? '',
      sliderImg: json['slider_img'] as String? ?? '',
      createdDt: json['created_dt'] as String? ?? '',
      sStatus: json['s_status'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      's_id': instance.sId,
      'slider_name': instance.sliderName,
      'slider_link': instance.sliderLink,
      'slider_img': instance.sliderImg,
      'created_dt': instance.createdDt,
      's_status': instance.sStatus,
    };
