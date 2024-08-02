import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'Data') @Default([]) List<Data>? data,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'me_notifi_id') @Default('') String? notifiId,
    @JsonKey(name: 'msg_for_user') @Default('') String? notifiMsg,
    @JsonKey(name: 'me_notifi_time') @Default('') String? msgSentTime,
    @Default(false) bool? isSeen, // notification batch
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
