import 'package:freezed_annotation/freezed_annotation.dart';

part 'varients_model.freezed.dart';
part 'varients_model.g.dart';

@freezed
class VarientsModel with _$VarientsModel {
  const factory VarientsModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "data") List<Data>? data,
  }) = _VarientsModel;

  factory VarientsModel.fromJson(Map<String, dynamic> json) =>
      _$VarientsModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "ver_id")  @Default('') String? verId,
    @JsonKey(name: "product_id")  @Default('') String? productId,
    @JsonKey(name: "pro_packing_size")  @Default('') String? proPackingSize,
    @JsonKey(name: "pro_price")  @Default('') String? proPrice,
    @JsonKey(name: "ver_status")  @Default('') String? verStatus,
    @JsonKey(name: "create_dt")  @Default('') String? createDt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
