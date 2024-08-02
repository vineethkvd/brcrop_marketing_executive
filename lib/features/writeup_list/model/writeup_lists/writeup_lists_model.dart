import 'package:freezed_annotation/freezed_annotation.dart';

part 'writeup_lists_model.freezed.dart';
part 'writeup_lists_model.g.dart';
@freezed
class WriteupListsModel with _$WriteupListsModel{
  const factory WriteupListsModel({
  @JsonKey(name: 'status') @Default(false) bool? status,
  @JsonKey(name: 'message') @Default('') String? message,
  @JsonKey(name: 'roport_writeup') @Default([]) List<ReportWriteUP>? data,
}) = _WriteupListsModel;

  factory WriteupListsModel.fromJson(Map<String, dynamic> json) => _$WriteupListsModelFromJson(json);
}
@freezed
class ReportWriteUP with _$ReportWriteUP{
  const factory ReportWriteUP({
@JsonKey(name: 'writeup_id') @Default('') String? writeupId,
@JsonKey(name: 'me_id') @Default('') String? meId,
@JsonKey(name: 'writeup') @Default('') String? writeUp,
@JsonKey(name: 'creat_dt') @Default('') String? creatDt,
@JsonKey(name: 'update_dt') @Default('') String? updateDt,
}) = _ReportWriteUP;

  factory ReportWriteUP.fromJson(Map<String, dynamic> json) => _$ReportWriteUPFromJson(json);
}