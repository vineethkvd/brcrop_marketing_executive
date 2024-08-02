import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_list_model.freezed.dart';
part 'category_list_model.g.dart';

@freezed
class CategoryListModel with _$CategoryListModel {
  const factory CategoryListModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "data") @Default([]) List<Data>? data,
  }) = _CategoryListModel;

  factory CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryListModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "pro_id") @Default('') String? proId,
    @JsonKey(name: "pro_unique_id") @Default('') String? proUniqueId,
    @JsonKey(name: "category_id") @Default('') String? categoryId,
    @JsonKey(name: "product_name") @Default('') String? productName,
    @JsonKey(name: "pro_img1") @Default('') String? proImg1,
    @JsonKey(name: "description") @Default('') String? description,
    @JsonKey(name: "pro_price") @Default('') String? proPrice,
    @JsonKey(name: "pro_packing") @Default('') String? proPacking,
    @JsonKey(name: "pro_packing_size") @Default('') String? proPackingSize,
    @JsonKey(name: "credit_days") @Default('') String? creditDays,
    @JsonKey(name: "create_dt") @Default('') String? createDt,
    @JsonKey(name: "update_dt") @Default('') String? updateDt,
    @JsonKey(name: "pro_status") @Default('') String? proStatus,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
