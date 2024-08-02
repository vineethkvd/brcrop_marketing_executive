// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sceheme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScehemeModelImpl _$$ScehemeModelImplFromJson(Map<String, dynamic> json) =>
    _$ScehemeModelImpl(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ScehemeModelImplToJson(_$ScehemeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      schId: json['sch_id'] as String? ?? '',
      schName: json['sch_name'] as String? ?? '',
      productIds: json['product_ids'] as String? ?? '',
      schCreditValue: json['sch_credit_value'] as String? ?? '',
      schOffer: json['sch_offer'] as String? ?? '',
      schStDt: json['sch_st_dt'] as String? ?? '',
      schEndDt: json['sch_end_dt'] as String? ?? '',
      schStatus: json['sch_status'] as String? ?? '',
      schCreatedDt: json['sch_created_dt'] as String? ?? '',
      productDetails: (json['product_details'] as List<dynamic>?)
              ?.map((e) => ProductDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'sch_id': instance.schId,
      'sch_name': instance.schName,
      'product_ids': instance.productIds,
      'sch_credit_value': instance.schCreditValue,
      'sch_offer': instance.schOffer,
      'sch_st_dt': instance.schStDt,
      'sch_end_dt': instance.schEndDt,
      'sch_status': instance.schStatus,
      'sch_created_dt': instance.schCreatedDt,
      'product_details': instance.productDetails,
    };

_$ProductDetailImpl _$$ProductDetailImplFromJson(Map<String, dynamic> json) =>
    _$ProductDetailImpl(
      proId: json['pro_id'] as String? ?? '',
      proUniqueId: json['pro_unique_id'] as String? ?? '',
      productName: json['product_name'] as String? ?? '',
      proImg1: json['pro_img1'] as String? ?? '',
      proPrice: json['pro_price'] as String? ?? '',
      offerPrice: (json['offer_price'] as num?)?.toDouble() ?? 0.0,
      categoryId: json['category_id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      creditDays: json['credit_days'] as String? ?? '',
      proPacking: json['pro_packing'] as String? ?? '',
      proPackingSize: json['pro_packing_size'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
      schemeStatus: json['scheme_status'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductDetailImplToJson(_$ProductDetailImpl instance) =>
    <String, dynamic>{
      'pro_id': instance.proId,
      'pro_unique_id': instance.proUniqueId,
      'product_name': instance.productName,
      'pro_img1': instance.proImg1,
      'pro_price': instance.proPrice,
      'offer_price': instance.offerPrice,
      'category_id': instance.categoryId,
      'description': instance.description,
      'credit_days': instance.creditDays,
      'pro_packing': instance.proPacking,
      'pro_packing_size': instance.proPackingSize,
      'category_name': instance.categoryName,
      'scheme_status': instance.schemeStatus,
    };
