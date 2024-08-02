import 'package:freezed_annotation/freezed_annotation.dart';

part 'testList_model.freezed.dart';
part 'testList_model.g.dart';

@freezed
class SoilListModel with _$SoilListModel {
  const factory SoilListModel({
    @JsonKey(name: 'status') @Default(false) bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'soil_list') @Default([]) List<Soillist>? soillist,
  }) = _soilListModel;

  factory SoilListModel.fromJson(Map<String, dynamic> json) =>
      _$SoilListModelFromJson(json);
}

@freezed
class Soillist with _$Soillist {
  const factory Soillist({
    @JsonKey(name: 'sample_id') @Default('') String? sampleId,
    @JsonKey(name: 'user_type') @Default('') String? userType,
    @JsonKey(name: 'user_id') @Default('') String? userId,
    @JsonKey(name: 'sample_date') @Default('') String? date,
    @JsonKey(name: 'farmer_name') @Default('') String? name,
    @JsonKey(name: 'address') @Default('') String? address,
    @JsonKey(name: 'mobile') @Default('') String? mobile,
    @JsonKey(name: 'sample_name') @Default('') String? sampleName,
    @JsonKey(name: 'sample_location') @Default('') String? sampleLocation,
    @JsonKey(name: 'region') @Default('') String? region,
    @JsonKey(name: 'revenue') @Default('') String? revenue,
    @JsonKey(name: 'district') @Default('') String? district,
    @JsonKey(name: 'survey_number') @Default('') String? surveyNumber,
    @JsonKey(name: 'service_number') @Default('') String? serviceNumber,
    @JsonKey(name: 'fertillzer_well') @Default('') String? fertillzerWell,
    @JsonKey(name: 'stable_crop') @Default('') String? stableCrop,
    @JsonKey(name: 'crop_name') @Default('') String? cropName,
    @JsonKey(name: 'examiner_name') @Default('') String? examinerName,
    @JsonKey(name: 'sample_image') @Default('') String? image,
    @JsonKey(name: 'test_type') @Default('') String? testType,
    @JsonKey(name: 'sample_sent') @Default('') String? sampleSent,
    @JsonKey(name: 'sample_remarks') @Default('') String? remarks,
    @JsonKey(name: 'sample_results') @Default('') String? result,
  }) = _soillist;

  factory Soillist.fromJson(Map<String, dynamic> json) =>
      _$SoillistFromJson(json);
}
