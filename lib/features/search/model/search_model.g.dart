// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchModelImpl _$$SearchModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchModelImpl(
      status: json['status'] as bool? ?? false,
      searchResult: (json['Search_Result'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SearchModelImplToJson(_$SearchModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Search_Result': instance.searchResult,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      proId: json['pro_id'] as String? ?? '',
      productName: json['product_name'] as String? ?? '',
      proUniqueId: json['pro_unique_id'] as String? ?? '',
      categoryId: json['category_id'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      proPrice: json['pro_price'] as String? ?? '',
      proPacking: json['pro_packing'] as String? ?? '',
      proPackingSize: json['pro_packing_size'] as String? ?? '',
      creditDays: json['credit_days'] as String? ?? '',
      createDt: json['create_dt'] as String? ?? '',
      proImg: json['pro_img'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'pro_id': instance.proId,
      'product_name': instance.productName,
      'pro_unique_id': instance.proUniqueId,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'description': instance.description,
      'pro_price': instance.proPrice,
      'pro_packing': instance.proPacking,
      'pro_packing_size': instance.proPackingSize,
      'credit_days': instance.creditDays,
      'create_dt': instance.createDt,
      'pro_img': instance.proImg,
    };
