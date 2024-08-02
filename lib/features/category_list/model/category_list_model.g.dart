// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListModelImpl _$$CategoryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryListModelImplToJson(
        _$CategoryListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      proId: json['pro_id'] as String? ?? '',
      proUniqueId: json['pro_unique_id'] as String? ?? '',
      categoryId: json['category_id'] as String? ?? '',
      productName: json['product_name'] as String? ?? '',
      proImg1: json['pro_img1'] as String? ?? '',
      description: json['description'] as String? ?? '',
      proPrice: json['pro_price'] as String? ?? '',
      proPacking: json['pro_packing'] as String? ?? '',
      proPackingSize: json['pro_packing_size'] as String? ?? '',
      creditDays: json['credit_days'] as String? ?? '',
      createDt: json['create_dt'] as String? ?? '',
      updateDt: json['update_dt'] as String? ?? '',
      proStatus: json['pro_status'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'pro_id': instance.proId,
      'pro_unique_id': instance.proUniqueId,
      'category_id': instance.categoryId,
      'product_name': instance.productName,
      'pro_img1': instance.proImg1,
      'description': instance.description,
      'pro_price': instance.proPrice,
      'pro_packing': instance.proPacking,
      'pro_packing_size': instance.proPackingSize,
      'credit_days': instance.creditDays,
      'create_dt': instance.createDt,
      'update_dt': instance.updateDt,
      'pro_status': instance.proStatus,
    };
