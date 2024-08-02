import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    @JsonKey(name: "status") @Default(false) bool? status,
    @JsonKey(name: "message") @Default('') String? message,
    @JsonKey(name: "data") @Default([]) List<Data>? data,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "ledg_id") @Default('') String? ledgId,
    @JsonKey(name: "dealer_id") @Default('') String? dealerId,
    @JsonKey(name: "me_id") @Default('') String? meId,
    @JsonKey(name: "ledg_pdf") @Default('') String? ledgPdf,
    @JsonKey(name: "create_date") @Default('') String? createDate,
    @JsonKey(name: "d_name") @Default('') String? dName,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
