import 'package:freezed_annotation/freezed_annotation.dart';
part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

@freezed
class SliderModel with _$SliderModel {
  const factory SliderModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') @Default([]) List<Data>? data,
  }) = _SliderModel;

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 's_id') @Default('') String? sId,
    @JsonKey(name: 'slider_name') @Default('') String? sliderName,
    @JsonKey(name: 'slider_link') @Default('') String? sliderLink,
    @JsonKey(name: 'slider_img') @Default('') String? sliderImg,
    @JsonKey(name: 'created_dt') @Default('') String? createdDt,
    @JsonKey(name: 's_status') @Default('') String? sStatus,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
