import 'package:freezed_annotation/freezed_annotation.dart';

part 'expence_list_model.freezed.dart';
part 'expence_list_model.g.dart';
@freezed
class ExpenseListModel with _$ExpenseListModel{
  const factory ExpenseListModel({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'expense_list') @Default([]) List<ExpenseList>? expenseList,
  }) = _ExpenseListModel;

  factory ExpenseListModel.fromJson(Map<String, dynamic> json) => _$ExpenseListModelFromJson(json);
}
@freezed
class ExpenseList with _$ExpenseList{
  const factory ExpenseList({
    @JsonKey(name: 'expense_id') @Default('') String? expenseId,
    @JsonKey(name: 'name') @Default('') String? name,
    @JsonKey(name: 'head_quarters') @Default('') String? head_quarters,
    @JsonKey(name: 'exp_statement_no') @Default('') String? exp_statement_no,
    @JsonKey(name: 'period_from') @Default('') String? period_from,
    @JsonKey(name: 'period_to') @Default('') String? period_to,
    @JsonKey(name: 'date') @Default('') String? date,
    @JsonKey(name: 'departure_station') @Default('') String? departure_station,
    @JsonKey(name: 'area_covered') @Default('') String? area_covered,
    @JsonKey(name: 'opening_kms') @Default('') String? opening_kms,
    @JsonKey(name: 'closing_kms') @Default('') String? closing_kms,
    @JsonKey(name: 'total_kms') @Default('') String? total_kms,
    @JsonKey(name: 'petrol_chrg_per_km') @Default('') String? petrol_chrg_per_km,
    @JsonKey(name: 'no_of_kms') @Default('') String? no_of_kms,
    @JsonKey(name: 'total_petrol_charges') @Default('') String? total_petrol_charges,
    @JsonKey(name: 'food_charges_per_day') @Default('') String? food_charges_per_day,
    @JsonKey(name: 'food_charge_days') @Default('') String? food_charge_days,
    @JsonKey(name: 'total_food_charges') @Default('') String? total_food_charges,
    @JsonKey(name: 'beta_charges_per_day') @Default('') String? beta_charges_per_day,
    @JsonKey(name: 'beta_charge_days') @Default('') String? beta_charge_days,
    @JsonKey(name: 'total_beta_charges') @Default('') String? total_beta_charges,
    @JsonKey(name: 'stay_chrg_per_day') @Default('') String? stay_chrg_per_day,
    @JsonKey(name: 'stay_charges_days') @Default('') String? stay_charges_days,
    @JsonKey(name: 'total_stay_charges') @Default('') String? total_stay_charges,
    @JsonKey(name: 'travel_chrg_per_day') @Default('') String? travel_chrg_per_day,
    @JsonKey(name: 'travel_charges_days') @Default('') String? travel_charges_days,
    @JsonKey(name: 'total_travel_charges') @Default('') String? total_travel_charges,
    @JsonKey(name: 'others_details') @Default('') String? others_details,
    @JsonKey(name: 'other_chrg') @Default('') String? other_chrg,
    @JsonKey(name: 'total_claim') @Default('') String? total_claim,
    @JsonKey(name: 'advance_received') @Default('') String? advance_received,
    @JsonKey(name: 'reim_amt') @Default('') String? reim_amt,
    @JsonKey(name: 'creat_dt') @Default('') String? creat_dt,
    @JsonKey(name: 'me_id') @Default('') String? me_id,
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'des_name') @Default('') String? des_name,
  }) = _ExpenseList;

  factory ExpenseList.fromJson(Map<String, dynamic> json) => _$ExpenseListFromJson(json);
}