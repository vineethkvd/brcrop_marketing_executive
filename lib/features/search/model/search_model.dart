import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "Search_Result") @Default([]) List<Data>? searchResult,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "pro_id") @Default('') String? proId,
    @JsonKey(name: "product_name") @Default('') String? productName,
    @JsonKey(name: "pro_unique_id") @Default('') String? proUniqueId,
    @JsonKey(name: "category_id") @Default('') String? categoryId,
    @JsonKey(name: "category_name") @Default('') String? categoryName,
    @JsonKey(name: "description") @Default('') String? description,
    @JsonKey(name: "pro_price") @Default('') String? proPrice,
    @JsonKey(name: "pro_packing") @Default('') String? proPacking,
    @JsonKey(name: "pro_packing_size") @Default('') String? proPackingSize,
    @JsonKey(name: "credit_days") @Default('') String? creditDays,
    @JsonKey(name: "create_dt") @Default('') String? createDt,
    @JsonKey(name: "pro_img") @Default('') String? proImg,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
