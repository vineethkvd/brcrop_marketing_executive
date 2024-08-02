// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'varients_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VarientsModelImpl _$$VarientsModelImplFromJson(Map<String, dynamic> json) =>
    _$VarientsModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VarientsModelImplToJson(_$VarientsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      verId: json['ver_id'] as String? ?? '',
      productId: json['product_id'] as String? ?? '',
      proPackingSize: json['pro_packing_size'] as String? ?? '',
      proPrice: json['pro_price'] as String? ?? '',
      verStatus: json['ver_status'] as String? ?? '',
      createDt: json['create_dt'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'ver_id': instance.verId,
      'product_id': instance.productId,
      'pro_packing_size': instance.proPackingSize,
      'pro_price': instance.proPrice,
      'ver_status': instance.verStatus,
      'create_dt': instance.createDt,
    };
