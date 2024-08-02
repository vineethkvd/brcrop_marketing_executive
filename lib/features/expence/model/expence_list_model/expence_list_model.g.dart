// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expence_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseListModelImpl _$$ExpenseListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpenseListModelImpl(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      expenseList: (json['expense_list'] as List<dynamic>?)
              ?.map((e) => ExpenseList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ExpenseListModelImplToJson(
        _$ExpenseListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'expense_list': instance.expenseList,
    };

_$ExpenseListImpl _$$ExpenseListImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseListImpl(
      expenseId: json['expense_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      head_quarters: json['head_quarters'] as String? ?? '',
      exp_statement_no: json['exp_statement_no'] as String? ?? '',
      period_from: json['period_from'] as String? ?? '',
      period_to: json['period_to'] as String? ?? '',
      date: json['date'] as String? ?? '',
      departure_station: json['departure_station'] as String? ?? '',
      area_covered: json['area_covered'] as String? ?? '',
      opening_kms: json['opening_kms'] as String? ?? '',
      closing_kms: json['closing_kms'] as String? ?? '',
      total_kms: json['total_kms'] as String? ?? '',
      petrol_chrg_per_km: json['petrol_chrg_per_km'] as String? ?? '',
      no_of_kms: json['no_of_kms'] as String? ?? '',
      total_petrol_charges: json['total_petrol_charges'] as String? ?? '',
      food_charges_per_day: json['food_charges_per_day'] as String? ?? '',
      food_charge_days: json['food_charge_days'] as String? ?? '',
      total_food_charges: json['total_food_charges'] as String? ?? '',
      beta_charges_per_day: json['beta_charges_per_day'] as String? ?? '',
      beta_charge_days: json['beta_charge_days'] as String? ?? '',
      total_beta_charges: json['total_beta_charges'] as String? ?? '',
      stay_chrg_per_day: json['stay_chrg_per_day'] as String? ?? '',
      stay_charges_days: json['stay_charges_days'] as String? ?? '',
      total_stay_charges: json['total_stay_charges'] as String? ?? '',
      travel_chrg_per_day: json['travel_chrg_per_day'] as String? ?? '',
      travel_charges_days: json['travel_charges_days'] as String? ?? '',
      total_travel_charges: json['total_travel_charges'] as String? ?? '',
      others_details: json['others_details'] as String? ?? '',
      other_chrg: json['other_chrg'] as String? ?? '',
      total_claim: json['total_claim'] as String? ?? '',
      advance_received: json['advance_received'] as String? ?? '',
      reim_amt: json['reim_amt'] as String? ?? '',
      creat_dt: json['creat_dt'] as String? ?? '',
      me_id: json['me_id'] as String? ?? '',
      status: json['status'] as String? ?? '',
      des_name: json['des_name'] as String? ?? '',
    );

Map<String, dynamic> _$$ExpenseListImplToJson(_$ExpenseListImpl instance) =>
    <String, dynamic>{
      'expense_id': instance.expenseId,
      'name': instance.name,
      'head_quarters': instance.head_quarters,
      'exp_statement_no': instance.exp_statement_no,
      'period_from': instance.period_from,
      'period_to': instance.period_to,
      'date': instance.date,
      'departure_station': instance.departure_station,
      'area_covered': instance.area_covered,
      'opening_kms': instance.opening_kms,
      'closing_kms': instance.closing_kms,
      'total_kms': instance.total_kms,
      'petrol_chrg_per_km': instance.petrol_chrg_per_km,
      'no_of_kms': instance.no_of_kms,
      'total_petrol_charges': instance.total_petrol_charges,
      'food_charges_per_day': instance.food_charges_per_day,
      'food_charge_days': instance.food_charge_days,
      'total_food_charges': instance.total_food_charges,
      'beta_charges_per_day': instance.beta_charges_per_day,
      'beta_charge_days': instance.beta_charge_days,
      'total_beta_charges': instance.total_beta_charges,
      'stay_chrg_per_day': instance.stay_chrg_per_day,
      'stay_charges_days': instance.stay_charges_days,
      'total_stay_charges': instance.total_stay_charges,
      'travel_chrg_per_day': instance.travel_chrg_per_day,
      'travel_charges_days': instance.travel_charges_days,
      'total_travel_charges': instance.total_travel_charges,
      'others_details': instance.others_details,
      'other_chrg': instance.other_chrg,
      'total_claim': instance.total_claim,
      'advance_received': instance.advance_received,
      'reim_amt': instance.reim_amt,
      'creat_dt': instance.creat_dt,
      'me_id': instance.me_id,
      'status': instance.status,
      'des_name': instance.des_name,
    };
