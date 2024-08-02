import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewNtf_model.freezed.dart';
part 'viewNtf_model.g.dart';

@freezed
class ViewNotificationModel with _$ViewNotificationModel {
  const factory ViewNotificationModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
  }) = _ViewNotificationModel;

  factory ViewNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$ViewNotificationModelFromJson(json);
}
