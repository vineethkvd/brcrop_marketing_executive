import 'package:freezed_annotation/freezed_annotation.dart';

part 'countNtf_model.freezed.dart';
part 'countNtf_model.g.dart';

@freezed
class NotificationCountModel with _$NotificationCountModel {
  const factory NotificationCountModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') CountData? data,
  }) = _NotificationCountModel;

  factory NotificationCountModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationCountModelFromJson(json);
}

@freezed
class CountData with _$CountData {
  const factory CountData({
    @JsonKey(name: 'unseen_count') String? unseenCount,
    @Default(false) bool? isSeen, // notification batch
  }) = _CountData;

  factory CountData.fromJson(Map<String, dynamic> json) => _$CountDataFromJson(json);
}
