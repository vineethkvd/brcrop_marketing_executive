// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryModelImpl _$$DeliveryModelImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$DeliveryModelImplToJson(_$DeliveryModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
