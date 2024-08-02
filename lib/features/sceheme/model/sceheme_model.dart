import 'package:freezed_annotation/freezed_annotation.dart';

part 'sceheme_model.g.dart';
part 'sceheme_model.freezed.dart';

@freezed
class ScehemeModel with _$ScehemeModel {
  const factory ScehemeModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "data") @Default([]) List<Data>? data,
  }) = _ScehemeModel;

  factory ScehemeModel.fromJson(Map<String, dynamic> json) =>
      _$ScehemeModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "sch_id") @Default('') String? schId,
    @JsonKey(name: "sch_name") @Default('') String? schName,
    @JsonKey(name: "product_ids") @Default('') String? productIds,
    @JsonKey(name: "sch_credit_value") @Default('') String? schCreditValue,
    @JsonKey(name: "sch_offer") @Default('') String? schOffer,
    @JsonKey(name: "sch_st_dt") @Default('') String? schStDt,
    @JsonKey(name: "sch_end_dt") @Default('') String? schEndDt,
    @JsonKey(name: "sch_status") @Default('') String? schStatus,
    @JsonKey(name: "sch_created_dt") @Default('') String? schCreatedDt,
    @JsonKey(name: "product_details")
    @Default([])
    List<ProductDetail>? productDetails,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    @JsonKey(name: "pro_id") @Default('') String? proId,
    @JsonKey(name: "pro_unique_id") @Default('') String? proUniqueId,
    @JsonKey(name: "product_name") @Default('') String? productName,
    @JsonKey(name: "pro_img1") @Default('') String? proImg1,
    @JsonKey(name: "pro_price") @Default('') String? proPrice,
    @JsonKey(name: "offer_price") @Default(0.0) double? offerPrice,
    @JsonKey(name: "category_id") @Default('') String? categoryId,
    @JsonKey(name: "description") @Default('') String? description,
    @JsonKey(name: "credit_days") @Default('') String? creditDays,
    @JsonKey(name: "pro_packing") @Default('') String? proPacking,
    @JsonKey(name: "pro_packing_size") @Default('') String? proPackingSize,
    @JsonKey(name: "category_name") @Default('') String? categoryName,
    @JsonKey(name: "scheme_status") @Default('') String? schemeStatus
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}
