import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_image_model.g.dart';
part 'qr_image_model.freezed.dart';
@freezed
class QrImageModel with _$QrImageModel{
  const factory QrImageModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'gpay_image') @Default('') String? gpayImage,
  }) = _QrImageModel;

  factory QrImageModel.fromJson(Map<String, dynamic> json) => _$QrImageModelFromJson(json);
}