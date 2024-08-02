import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';
@freezed
class DeliveryModel with _$DeliveryModel{
  const factory DeliveryModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
}) = _DeliveryModel;

  factory DeliveryModel.fromJson(Map<String, dynamic> json) => _$DeliveryModelFromJson(json);
}