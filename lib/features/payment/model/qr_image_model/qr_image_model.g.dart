// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QrImageModelImpl _$$QrImageModelImplFromJson(Map<String, dynamic> json) =>
    _$QrImageModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      gpayImage: json['gpay_image'] as String? ?? '',
    );

Map<String, dynamic> _$$QrImageModelImplToJson(_$QrImageModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'gpay_image': instance.gpayImage,
    };
