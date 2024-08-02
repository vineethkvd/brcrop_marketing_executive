import 'package:freezed_annotation/freezed_annotation.dart';

part 'convience_model.freezed.dart';
part 'convience_model.g.dart';
@freezed
class ConvienceModel with _$ConvienceModel{
  const factory ConvienceModel({
    @JsonKey(name: 'status') @Default('Failed') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'data') @Default([]) List<Data>? data,
  }) = _ConvienceModel;

  factory ConvienceModel.fromJson(Map<String, dynamic> json) => _$ConvienceModelFromJson(json);
}
@freezed
class Data with _$Data{
  const factory Data({
    @JsonKey(name: 'exp_id') @Default('Failed') String? expId,
    @JsonKey(name: 'exp_name') @Default('') String? expName,
    @JsonKey(name: 'exp_amt') @Default('') String?  expAmt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}