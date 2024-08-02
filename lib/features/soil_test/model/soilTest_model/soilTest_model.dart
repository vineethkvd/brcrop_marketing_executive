import 'package:freezed_annotation/freezed_annotation.dart';

part 'soilTest_model.freezed.dart';
part 'soilTest_model.g.dart';

@freezed
class SoilTestModel with _$SoilTestModel {
  const factory SoilTestModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
  }) = _SoilTestModel;

  factory SoilTestModel.fromJson(Map<String, dynamic> json) =>
      _$SoilTestModelFromJson(json);
}
