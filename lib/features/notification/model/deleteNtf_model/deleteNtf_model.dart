import 'package:freezed_annotation/freezed_annotation.dart';

part 'deleteNtf_model.freezed.dart';
part 'deleteNtf_model.g.dart';

@freezed
class DeleteNotificationModel with _$DeleteNotificationModel {
  const factory DeleteNotificationModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
  }) = _DeleteNotificationModel;

  factory DeleteNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteNotificationModelFromJson(json);
}
