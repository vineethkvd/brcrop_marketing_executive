// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expence_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpenseListModel _$ExpenseListModelFromJson(Map<String, dynamic> json) {
  return _ExpenseListModel.fromJson(json);
}

/// @nodoc
mixin _$ExpenseListModel {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'expense_list')
  List<ExpenseList>? get expenseList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseListModelCopyWith<ExpenseListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseListModelCopyWith<$Res> {
  factory $ExpenseListModelCopyWith(
          ExpenseListModel value, $Res Function(ExpenseListModel) then) =
      _$ExpenseListModelCopyWithImpl<$Res, ExpenseListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'expense_list') List<ExpenseList>? expenseList});
}

/// @nodoc
class _$ExpenseListModelCopyWithImpl<$Res, $Val extends ExpenseListModel>
    implements $ExpenseListModelCopyWith<$Res> {
  _$ExpenseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? expenseList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      expenseList: freezed == expenseList
          ? _value.expenseList
          : expenseList // ignore: cast_nullable_to_non_nullable
              as List<ExpenseList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseListModelImplCopyWith<$Res>
    implements $ExpenseListModelCopyWith<$Res> {
  factory _$$ExpenseListModelImplCopyWith(_$ExpenseListModelImpl value,
          $Res Function(_$ExpenseListModelImpl) then) =
      __$$ExpenseListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'expense_list') List<ExpenseList>? expenseList});
}

/// @nodoc
class __$$ExpenseListModelImplCopyWithImpl<$Res>
    extends _$ExpenseListModelCopyWithImpl<$Res, _$ExpenseListModelImpl>
    implements _$$ExpenseListModelImplCopyWith<$Res> {
  __$$ExpenseListModelImplCopyWithImpl(_$ExpenseListModelImpl _value,
      $Res Function(_$ExpenseListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? expenseList = freezed,
  }) {
    return _then(_$ExpenseListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      expenseList: freezed == expenseList
          ? _value._expenseList
          : expenseList // ignore: cast_nullable_to_non_nullable
              as List<ExpenseList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseListModelImpl implements _ExpenseListModel {
  const _$ExpenseListModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'expense_list')
      final List<ExpenseList>? expenseList = const []})
      : _expenseList = expenseList;

  factory _$ExpenseListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseListModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<ExpenseList>? _expenseList;
  @override
  @JsonKey(name: 'expense_list')
  List<ExpenseList>? get expenseList {
    final value = _expenseList;
    if (value == null) return null;
    if (_expenseList is EqualUnmodifiableListView) return _expenseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExpenseListModel(status: $status, message: $message, expenseList: $expenseList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._expenseList, _expenseList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_expenseList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseListModelImplCopyWith<_$ExpenseListModelImpl> get copyWith =>
      __$$ExpenseListModelImplCopyWithImpl<_$ExpenseListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseListModelImplToJson(
      this,
    );
  }
}

abstract class _ExpenseListModel implements ExpenseListModel {
  const factory _ExpenseListModel(
      {@JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'expense_list')
      final List<ExpenseList>? expenseList}) = _$ExpenseListModelImpl;

  factory _ExpenseListModel.fromJson(Map<String, dynamic> json) =
      _$ExpenseListModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'expense_list')
  List<ExpenseList>? get expenseList;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseListModelImplCopyWith<_$ExpenseListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseList _$ExpenseListFromJson(Map<String, dynamic> json) {
  return _ExpenseList.fromJson(json);
}

/// @nodoc
mixin _$ExpenseList {
  @JsonKey(name: 'expense_id')
  String? get expenseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'head_quarters')
  String? get head_quarters => throw _privateConstructorUsedError;
  @JsonKey(name: 'exp_statement_no')
  String? get exp_statement_no => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_from')
  String? get period_from => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_to')
  String? get period_to => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'departure_station')
  String? get departure_station => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_covered')
  String? get area_covered => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_kms')
  String? get opening_kms => throw _privateConstructorUsedError;
  @JsonKey(name: 'closing_kms')
  String? get closing_kms => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_kms')
  String? get total_kms => throw _privateConstructorUsedError;
  @JsonKey(name: 'petrol_chrg_per_km')
  String? get petrol_chrg_per_km => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_of_kms')
  String? get no_of_kms => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_petrol_charges')
  String? get total_petrol_charges => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_charges_per_day')
  String? get food_charges_per_day => throw _privateConstructorUsedError;
  @JsonKey(name: 'food_charge_days')
  String? get food_charge_days => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_food_charges')
  String? get total_food_charges => throw _privateConstructorUsedError;
  @JsonKey(name: 'beta_charges_per_day')
  String? get beta_charges_per_day => throw _privateConstructorUsedError;
  @JsonKey(name: 'beta_charge_days')
  String? get beta_charge_days => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_beta_charges')
  String? get total_beta_charges => throw _privateConstructorUsedError;
  @JsonKey(name: 'stay_chrg_per_day')
  String? get stay_chrg_per_day => throw _privateConstructorUsedError;
  @JsonKey(name: 'stay_charges_days')
  String? get stay_charges_days => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_stay_charges')
  String? get total_stay_charges => throw _privateConstructorUsedError;
  @JsonKey(name: 'travel_chrg_per_day')
  String? get travel_chrg_per_day => throw _privateConstructorUsedError;
  @JsonKey(name: 'travel_charges_days')
  String? get travel_charges_days => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_travel_charges')
  String? get total_travel_charges => throw _privateConstructorUsedError;
  @JsonKey(name: 'others_details')
  String? get others_details => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_chrg')
  String? get other_chrg => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_claim')
  String? get total_claim => throw _privateConstructorUsedError;
  @JsonKey(name: 'advance_received')
  String? get advance_received => throw _privateConstructorUsedError;
  @JsonKey(name: 'reim_amt')
  String? get reim_amt => throw _privateConstructorUsedError;
  @JsonKey(name: 'creat_dt')
  String? get creat_dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'me_id')
  String? get me_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'des_name')
  String? get des_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenseListCopyWith<ExpenseList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseListCopyWith<$Res> {
  factory $ExpenseListCopyWith(
          ExpenseList value, $Res Function(ExpenseList) then) =
      _$ExpenseListCopyWithImpl<$Res, ExpenseList>;
  @useResult
  $Res call(
      {@JsonKey(name: 'expense_id') String? expenseId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'head_quarters') String? head_quarters,
      @JsonKey(name: 'exp_statement_no') String? exp_statement_no,
      @JsonKey(name: 'period_from') String? period_from,
      @JsonKey(name: 'period_to') String? period_to,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'departure_station') String? departure_station,
      @JsonKey(name: 'area_covered') String? area_covered,
      @JsonKey(name: 'opening_kms') String? opening_kms,
      @JsonKey(name: 'closing_kms') String? closing_kms,
      @JsonKey(name: 'total_kms') String? total_kms,
      @JsonKey(name: 'petrol_chrg_per_km') String? petrol_chrg_per_km,
      @JsonKey(name: 'no_of_kms') String? no_of_kms,
      @JsonKey(name: 'total_petrol_charges') String? total_petrol_charges,
      @JsonKey(name: 'food_charges_per_day') String? food_charges_per_day,
      @JsonKey(name: 'food_charge_days') String? food_charge_days,
      @JsonKey(name: 'total_food_charges') String? total_food_charges,
      @JsonKey(name: 'beta_charges_per_day') String? beta_charges_per_day,
      @JsonKey(name: 'beta_charge_days') String? beta_charge_days,
      @JsonKey(name: 'total_beta_charges') String? total_beta_charges,
      @JsonKey(name: 'stay_chrg_per_day') String? stay_chrg_per_day,
      @JsonKey(name: 'stay_charges_days') String? stay_charges_days,
      @JsonKey(name: 'total_stay_charges') String? total_stay_charges,
      @JsonKey(name: 'travel_chrg_per_day') String? travel_chrg_per_day,
      @JsonKey(name: 'travel_charges_days') String? travel_charges_days,
      @JsonKey(name: 'total_travel_charges') String? total_travel_charges,
      @JsonKey(name: 'others_details') String? others_details,
      @JsonKey(name: 'other_chrg') String? other_chrg,
      @JsonKey(name: 'total_claim') String? total_claim,
      @JsonKey(name: 'advance_received') String? advance_received,
      @JsonKey(name: 'reim_amt') String? reim_amt,
      @JsonKey(name: 'creat_dt') String? creat_dt,
      @JsonKey(name: 'me_id') String? me_id,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'des_name') String? des_name});
}

/// @nodoc
class _$ExpenseListCopyWithImpl<$Res, $Val extends ExpenseList>
    implements $ExpenseListCopyWith<$Res> {
  _$ExpenseListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = freezed,
    Object? name = freezed,
    Object? head_quarters = freezed,
    Object? exp_statement_no = freezed,
    Object? period_from = freezed,
    Object? period_to = freezed,
    Object? date = freezed,
    Object? departure_station = freezed,
    Object? area_covered = freezed,
    Object? opening_kms = freezed,
    Object? closing_kms = freezed,
    Object? total_kms = freezed,
    Object? petrol_chrg_per_km = freezed,
    Object? no_of_kms = freezed,
    Object? total_petrol_charges = freezed,
    Object? food_charges_per_day = freezed,
    Object? food_charge_days = freezed,
    Object? total_food_charges = freezed,
    Object? beta_charges_per_day = freezed,
    Object? beta_charge_days = freezed,
    Object? total_beta_charges = freezed,
    Object? stay_chrg_per_day = freezed,
    Object? stay_charges_days = freezed,
    Object? total_stay_charges = freezed,
    Object? travel_chrg_per_day = freezed,
    Object? travel_charges_days = freezed,
    Object? total_travel_charges = freezed,
    Object? others_details = freezed,
    Object? other_chrg = freezed,
    Object? total_claim = freezed,
    Object? advance_received = freezed,
    Object? reim_amt = freezed,
    Object? creat_dt = freezed,
    Object? me_id = freezed,
    Object? status = freezed,
    Object? des_name = freezed,
  }) {
    return _then(_value.copyWith(
      expenseId: freezed == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      head_quarters: freezed == head_quarters
          ? _value.head_quarters
          : head_quarters // ignore: cast_nullable_to_non_nullable
              as String?,
      exp_statement_no: freezed == exp_statement_no
          ? _value.exp_statement_no
          : exp_statement_no // ignore: cast_nullable_to_non_nullable
              as String?,
      period_from: freezed == period_from
          ? _value.period_from
          : period_from // ignore: cast_nullable_to_non_nullable
              as String?,
      period_to: freezed == period_to
          ? _value.period_to
          : period_to // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      departure_station: freezed == departure_station
          ? _value.departure_station
          : departure_station // ignore: cast_nullable_to_non_nullable
              as String?,
      area_covered: freezed == area_covered
          ? _value.area_covered
          : area_covered // ignore: cast_nullable_to_non_nullable
              as String?,
      opening_kms: freezed == opening_kms
          ? _value.opening_kms
          : opening_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      closing_kms: freezed == closing_kms
          ? _value.closing_kms
          : closing_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      total_kms: freezed == total_kms
          ? _value.total_kms
          : total_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      petrol_chrg_per_km: freezed == petrol_chrg_per_km
          ? _value.petrol_chrg_per_km
          : petrol_chrg_per_km // ignore: cast_nullable_to_non_nullable
              as String?,
      no_of_kms: freezed == no_of_kms
          ? _value.no_of_kms
          : no_of_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      total_petrol_charges: freezed == total_petrol_charges
          ? _value.total_petrol_charges
          : total_petrol_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      food_charges_per_day: freezed == food_charges_per_day
          ? _value.food_charges_per_day
          : food_charges_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      food_charge_days: freezed == food_charge_days
          ? _value.food_charge_days
          : food_charge_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_food_charges: freezed == total_food_charges
          ? _value.total_food_charges
          : total_food_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      beta_charges_per_day: freezed == beta_charges_per_day
          ? _value.beta_charges_per_day
          : beta_charges_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      beta_charge_days: freezed == beta_charge_days
          ? _value.beta_charge_days
          : beta_charge_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_beta_charges: freezed == total_beta_charges
          ? _value.total_beta_charges
          : total_beta_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      stay_chrg_per_day: freezed == stay_chrg_per_day
          ? _value.stay_chrg_per_day
          : stay_chrg_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      stay_charges_days: freezed == stay_charges_days
          ? _value.stay_charges_days
          : stay_charges_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_stay_charges: freezed == total_stay_charges
          ? _value.total_stay_charges
          : total_stay_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      travel_chrg_per_day: freezed == travel_chrg_per_day
          ? _value.travel_chrg_per_day
          : travel_chrg_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      travel_charges_days: freezed == travel_charges_days
          ? _value.travel_charges_days
          : travel_charges_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_travel_charges: freezed == total_travel_charges
          ? _value.total_travel_charges
          : total_travel_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      others_details: freezed == others_details
          ? _value.others_details
          : others_details // ignore: cast_nullable_to_non_nullable
              as String?,
      other_chrg: freezed == other_chrg
          ? _value.other_chrg
          : other_chrg // ignore: cast_nullable_to_non_nullable
              as String?,
      total_claim: freezed == total_claim
          ? _value.total_claim
          : total_claim // ignore: cast_nullable_to_non_nullable
              as String?,
      advance_received: freezed == advance_received
          ? _value.advance_received
          : advance_received // ignore: cast_nullable_to_non_nullable
              as String?,
      reim_amt: freezed == reim_amt
          ? _value.reim_amt
          : reim_amt // ignore: cast_nullable_to_non_nullable
              as String?,
      creat_dt: freezed == creat_dt
          ? _value.creat_dt
          : creat_dt // ignore: cast_nullable_to_non_nullable
              as String?,
      me_id: freezed == me_id
          ? _value.me_id
          : me_id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      des_name: freezed == des_name
          ? _value.des_name
          : des_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseListImplCopyWith<$Res>
    implements $ExpenseListCopyWith<$Res> {
  factory _$$ExpenseListImplCopyWith(
          _$ExpenseListImpl value, $Res Function(_$ExpenseListImpl) then) =
      __$$ExpenseListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'expense_id') String? expenseId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'head_quarters') String? head_quarters,
      @JsonKey(name: 'exp_statement_no') String? exp_statement_no,
      @JsonKey(name: 'period_from') String? period_from,
      @JsonKey(name: 'period_to') String? period_to,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'departure_station') String? departure_station,
      @JsonKey(name: 'area_covered') String? area_covered,
      @JsonKey(name: 'opening_kms') String? opening_kms,
      @JsonKey(name: 'closing_kms') String? closing_kms,
      @JsonKey(name: 'total_kms') String? total_kms,
      @JsonKey(name: 'petrol_chrg_per_km') String? petrol_chrg_per_km,
      @JsonKey(name: 'no_of_kms') String? no_of_kms,
      @JsonKey(name: 'total_petrol_charges') String? total_petrol_charges,
      @JsonKey(name: 'food_charges_per_day') String? food_charges_per_day,
      @JsonKey(name: 'food_charge_days') String? food_charge_days,
      @JsonKey(name: 'total_food_charges') String? total_food_charges,
      @JsonKey(name: 'beta_charges_per_day') String? beta_charges_per_day,
      @JsonKey(name: 'beta_charge_days') String? beta_charge_days,
      @JsonKey(name: 'total_beta_charges') String? total_beta_charges,
      @JsonKey(name: 'stay_chrg_per_day') String? stay_chrg_per_day,
      @JsonKey(name: 'stay_charges_days') String? stay_charges_days,
      @JsonKey(name: 'total_stay_charges') String? total_stay_charges,
      @JsonKey(name: 'travel_chrg_per_day') String? travel_chrg_per_day,
      @JsonKey(name: 'travel_charges_days') String? travel_charges_days,
      @JsonKey(name: 'total_travel_charges') String? total_travel_charges,
      @JsonKey(name: 'others_details') String? others_details,
      @JsonKey(name: 'other_chrg') String? other_chrg,
      @JsonKey(name: 'total_claim') String? total_claim,
      @JsonKey(name: 'advance_received') String? advance_received,
      @JsonKey(name: 'reim_amt') String? reim_amt,
      @JsonKey(name: 'creat_dt') String? creat_dt,
      @JsonKey(name: 'me_id') String? me_id,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'des_name') String? des_name});
}

/// @nodoc
class __$$ExpenseListImplCopyWithImpl<$Res>
    extends _$ExpenseListCopyWithImpl<$Res, _$ExpenseListImpl>
    implements _$$ExpenseListImplCopyWith<$Res> {
  __$$ExpenseListImplCopyWithImpl(
      _$ExpenseListImpl _value, $Res Function(_$ExpenseListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = freezed,
    Object? name = freezed,
    Object? head_quarters = freezed,
    Object? exp_statement_no = freezed,
    Object? period_from = freezed,
    Object? period_to = freezed,
    Object? date = freezed,
    Object? departure_station = freezed,
    Object? area_covered = freezed,
    Object? opening_kms = freezed,
    Object? closing_kms = freezed,
    Object? total_kms = freezed,
    Object? petrol_chrg_per_km = freezed,
    Object? no_of_kms = freezed,
    Object? total_petrol_charges = freezed,
    Object? food_charges_per_day = freezed,
    Object? food_charge_days = freezed,
    Object? total_food_charges = freezed,
    Object? beta_charges_per_day = freezed,
    Object? beta_charge_days = freezed,
    Object? total_beta_charges = freezed,
    Object? stay_chrg_per_day = freezed,
    Object? stay_charges_days = freezed,
    Object? total_stay_charges = freezed,
    Object? travel_chrg_per_day = freezed,
    Object? travel_charges_days = freezed,
    Object? total_travel_charges = freezed,
    Object? others_details = freezed,
    Object? other_chrg = freezed,
    Object? total_claim = freezed,
    Object? advance_received = freezed,
    Object? reim_amt = freezed,
    Object? creat_dt = freezed,
    Object? me_id = freezed,
    Object? status = freezed,
    Object? des_name = freezed,
  }) {
    return _then(_$ExpenseListImpl(
      expenseId: freezed == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      head_quarters: freezed == head_quarters
          ? _value.head_quarters
          : head_quarters // ignore: cast_nullable_to_non_nullable
              as String?,
      exp_statement_no: freezed == exp_statement_no
          ? _value.exp_statement_no
          : exp_statement_no // ignore: cast_nullable_to_non_nullable
              as String?,
      period_from: freezed == period_from
          ? _value.period_from
          : period_from // ignore: cast_nullable_to_non_nullable
              as String?,
      period_to: freezed == period_to
          ? _value.period_to
          : period_to // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      departure_station: freezed == departure_station
          ? _value.departure_station
          : departure_station // ignore: cast_nullable_to_non_nullable
              as String?,
      area_covered: freezed == area_covered
          ? _value.area_covered
          : area_covered // ignore: cast_nullable_to_non_nullable
              as String?,
      opening_kms: freezed == opening_kms
          ? _value.opening_kms
          : opening_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      closing_kms: freezed == closing_kms
          ? _value.closing_kms
          : closing_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      total_kms: freezed == total_kms
          ? _value.total_kms
          : total_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      petrol_chrg_per_km: freezed == petrol_chrg_per_km
          ? _value.petrol_chrg_per_km
          : petrol_chrg_per_km // ignore: cast_nullable_to_non_nullable
              as String?,
      no_of_kms: freezed == no_of_kms
          ? _value.no_of_kms
          : no_of_kms // ignore: cast_nullable_to_non_nullable
              as String?,
      total_petrol_charges: freezed == total_petrol_charges
          ? _value.total_petrol_charges
          : total_petrol_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      food_charges_per_day: freezed == food_charges_per_day
          ? _value.food_charges_per_day
          : food_charges_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      food_charge_days: freezed == food_charge_days
          ? _value.food_charge_days
          : food_charge_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_food_charges: freezed == total_food_charges
          ? _value.total_food_charges
          : total_food_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      beta_charges_per_day: freezed == beta_charges_per_day
          ? _value.beta_charges_per_day
          : beta_charges_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      beta_charge_days: freezed == beta_charge_days
          ? _value.beta_charge_days
          : beta_charge_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_beta_charges: freezed == total_beta_charges
          ? _value.total_beta_charges
          : total_beta_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      stay_chrg_per_day: freezed == stay_chrg_per_day
          ? _value.stay_chrg_per_day
          : stay_chrg_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      stay_charges_days: freezed == stay_charges_days
          ? _value.stay_charges_days
          : stay_charges_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_stay_charges: freezed == total_stay_charges
          ? _value.total_stay_charges
          : total_stay_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      travel_chrg_per_day: freezed == travel_chrg_per_day
          ? _value.travel_chrg_per_day
          : travel_chrg_per_day // ignore: cast_nullable_to_non_nullable
              as String?,
      travel_charges_days: freezed == travel_charges_days
          ? _value.travel_charges_days
          : travel_charges_days // ignore: cast_nullable_to_non_nullable
              as String?,
      total_travel_charges: freezed == total_travel_charges
          ? _value.total_travel_charges
          : total_travel_charges // ignore: cast_nullable_to_non_nullable
              as String?,
      others_details: freezed == others_details
          ? _value.others_details
          : others_details // ignore: cast_nullable_to_non_nullable
              as String?,
      other_chrg: freezed == other_chrg
          ? _value.other_chrg
          : other_chrg // ignore: cast_nullable_to_non_nullable
              as String?,
      total_claim: freezed == total_claim
          ? _value.total_claim
          : total_claim // ignore: cast_nullable_to_non_nullable
              as String?,
      advance_received: freezed == advance_received
          ? _value.advance_received
          : advance_received // ignore: cast_nullable_to_non_nullable
              as String?,
      reim_amt: freezed == reim_amt
          ? _value.reim_amt
          : reim_amt // ignore: cast_nullable_to_non_nullable
              as String?,
      creat_dt: freezed == creat_dt
          ? _value.creat_dt
          : creat_dt // ignore: cast_nullable_to_non_nullable
              as String?,
      me_id: freezed == me_id
          ? _value.me_id
          : me_id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      des_name: freezed == des_name
          ? _value.des_name
          : des_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenseListImpl implements _ExpenseList {
  const _$ExpenseListImpl(
      {@JsonKey(name: 'expense_id') this.expenseId = '',
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'head_quarters') this.head_quarters = '',
      @JsonKey(name: 'exp_statement_no') this.exp_statement_no = '',
      @JsonKey(name: 'period_from') this.period_from = '',
      @JsonKey(name: 'period_to') this.period_to = '',
      @JsonKey(name: 'date') this.date = '',
      @JsonKey(name: 'departure_station') this.departure_station = '',
      @JsonKey(name: 'area_covered') this.area_covered = '',
      @JsonKey(name: 'opening_kms') this.opening_kms = '',
      @JsonKey(name: 'closing_kms') this.closing_kms = '',
      @JsonKey(name: 'total_kms') this.total_kms = '',
      @JsonKey(name: 'petrol_chrg_per_km') this.petrol_chrg_per_km = '',
      @JsonKey(name: 'no_of_kms') this.no_of_kms = '',
      @JsonKey(name: 'total_petrol_charges') this.total_petrol_charges = '',
      @JsonKey(name: 'food_charges_per_day') this.food_charges_per_day = '',
      @JsonKey(name: 'food_charge_days') this.food_charge_days = '',
      @JsonKey(name: 'total_food_charges') this.total_food_charges = '',
      @JsonKey(name: 'beta_charges_per_day') this.beta_charges_per_day = '',
      @JsonKey(name: 'beta_charge_days') this.beta_charge_days = '',
      @JsonKey(name: 'total_beta_charges') this.total_beta_charges = '',
      @JsonKey(name: 'stay_chrg_per_day') this.stay_chrg_per_day = '',
      @JsonKey(name: 'stay_charges_days') this.stay_charges_days = '',
      @JsonKey(name: 'total_stay_charges') this.total_stay_charges = '',
      @JsonKey(name: 'travel_chrg_per_day') this.travel_chrg_per_day = '',
      @JsonKey(name: 'travel_charges_days') this.travel_charges_days = '',
      @JsonKey(name: 'total_travel_charges') this.total_travel_charges = '',
      @JsonKey(name: 'others_details') this.others_details = '',
      @JsonKey(name: 'other_chrg') this.other_chrg = '',
      @JsonKey(name: 'total_claim') this.total_claim = '',
      @JsonKey(name: 'advance_received') this.advance_received = '',
      @JsonKey(name: 'reim_amt') this.reim_amt = '',
      @JsonKey(name: 'creat_dt') this.creat_dt = '',
      @JsonKey(name: 'me_id') this.me_id = '',
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'des_name') this.des_name = ''});

  factory _$ExpenseListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseListImplFromJson(json);

  @override
  @JsonKey(name: 'expense_id')
  final String? expenseId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'head_quarters')
  final String? head_quarters;
  @override
  @JsonKey(name: 'exp_statement_no')
  final String? exp_statement_no;
  @override
  @JsonKey(name: 'period_from')
  final String? period_from;
  @override
  @JsonKey(name: 'period_to')
  final String? period_to;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'departure_station')
  final String? departure_station;
  @override
  @JsonKey(name: 'area_covered')
  final String? area_covered;
  @override
  @JsonKey(name: 'opening_kms')
  final String? opening_kms;
  @override
  @JsonKey(name: 'closing_kms')
  final String? closing_kms;
  @override
  @JsonKey(name: 'total_kms')
  final String? total_kms;
  @override
  @JsonKey(name: 'petrol_chrg_per_km')
  final String? petrol_chrg_per_km;
  @override
  @JsonKey(name: 'no_of_kms')
  final String? no_of_kms;
  @override
  @JsonKey(name: 'total_petrol_charges')
  final String? total_petrol_charges;
  @override
  @JsonKey(name: 'food_charges_per_day')
  final String? food_charges_per_day;
  @override
  @JsonKey(name: 'food_charge_days')
  final String? food_charge_days;
  @override
  @JsonKey(name: 'total_food_charges')
  final String? total_food_charges;
  @override
  @JsonKey(name: 'beta_charges_per_day')
  final String? beta_charges_per_day;
  @override
  @JsonKey(name: 'beta_charge_days')
  final String? beta_charge_days;
  @override
  @JsonKey(name: 'total_beta_charges')
  final String? total_beta_charges;
  @override
  @JsonKey(name: 'stay_chrg_per_day')
  final String? stay_chrg_per_day;
  @override
  @JsonKey(name: 'stay_charges_days')
  final String? stay_charges_days;
  @override
  @JsonKey(name: 'total_stay_charges')
  final String? total_stay_charges;
  @override
  @JsonKey(name: 'travel_chrg_per_day')
  final String? travel_chrg_per_day;
  @override
  @JsonKey(name: 'travel_charges_days')
  final String? travel_charges_days;
  @override
  @JsonKey(name: 'total_travel_charges')
  final String? total_travel_charges;
  @override
  @JsonKey(name: 'others_details')
  final String? others_details;
  @override
  @JsonKey(name: 'other_chrg')
  final String? other_chrg;
  @override
  @JsonKey(name: 'total_claim')
  final String? total_claim;
  @override
  @JsonKey(name: 'advance_received')
  final String? advance_received;
  @override
  @JsonKey(name: 'reim_amt')
  final String? reim_amt;
  @override
  @JsonKey(name: 'creat_dt')
  final String? creat_dt;
  @override
  @JsonKey(name: 'me_id')
  final String? me_id;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'des_name')
  final String? des_name;

  @override
  String toString() {
    return 'ExpenseList(expenseId: $expenseId, name: $name, head_quarters: $head_quarters, exp_statement_no: $exp_statement_no, period_from: $period_from, period_to: $period_to, date: $date, departure_station: $departure_station, area_covered: $area_covered, opening_kms: $opening_kms, closing_kms: $closing_kms, total_kms: $total_kms, petrol_chrg_per_km: $petrol_chrg_per_km, no_of_kms: $no_of_kms, total_petrol_charges: $total_petrol_charges, food_charges_per_day: $food_charges_per_day, food_charge_days: $food_charge_days, total_food_charges: $total_food_charges, beta_charges_per_day: $beta_charges_per_day, beta_charge_days: $beta_charge_days, total_beta_charges: $total_beta_charges, stay_chrg_per_day: $stay_chrg_per_day, stay_charges_days: $stay_charges_days, total_stay_charges: $total_stay_charges, travel_chrg_per_day: $travel_chrg_per_day, travel_charges_days: $travel_charges_days, total_travel_charges: $total_travel_charges, others_details: $others_details, other_chrg: $other_chrg, total_claim: $total_claim, advance_received: $advance_received, reim_amt: $reim_amt, creat_dt: $creat_dt, me_id: $me_id, status: $status, des_name: $des_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseListImpl &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.head_quarters, head_quarters) ||
                other.head_quarters == head_quarters) &&
            (identical(other.exp_statement_no, exp_statement_no) ||
                other.exp_statement_no == exp_statement_no) &&
            (identical(other.period_from, period_from) ||
                other.period_from == period_from) &&
            (identical(other.period_to, period_to) ||
                other.period_to == period_to) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.departure_station, departure_station) ||
                other.departure_station == departure_station) &&
            (identical(other.area_covered, area_covered) ||
                other.area_covered == area_covered) &&
            (identical(other.opening_kms, opening_kms) ||
                other.opening_kms == opening_kms) &&
            (identical(other.closing_kms, closing_kms) ||
                other.closing_kms == closing_kms) &&
            (identical(other.total_kms, total_kms) ||
                other.total_kms == total_kms) &&
            (identical(other.petrol_chrg_per_km, petrol_chrg_per_km) ||
                other.petrol_chrg_per_km == petrol_chrg_per_km) &&
            (identical(other.no_of_kms, no_of_kms) ||
                other.no_of_kms == no_of_kms) &&
            (identical(other.total_petrol_charges, total_petrol_charges) ||
                other.total_petrol_charges == total_petrol_charges) &&
            (identical(other.food_charges_per_day, food_charges_per_day) ||
                other.food_charges_per_day == food_charges_per_day) &&
            (identical(other.food_charge_days, food_charge_days) ||
                other.food_charge_days == food_charge_days) &&
            (identical(other.total_food_charges, total_food_charges) ||
                other.total_food_charges == total_food_charges) &&
            (identical(other.beta_charges_per_day, beta_charges_per_day) ||
                other.beta_charges_per_day == beta_charges_per_day) &&
            (identical(other.beta_charge_days, beta_charge_days) ||
                other.beta_charge_days == beta_charge_days) &&
            (identical(other.total_beta_charges, total_beta_charges) ||
                other.total_beta_charges == total_beta_charges) &&
            (identical(other.stay_chrg_per_day, stay_chrg_per_day) ||
                other.stay_chrg_per_day == stay_chrg_per_day) &&
            (identical(other.stay_charges_days, stay_charges_days) ||
                other.stay_charges_days == stay_charges_days) &&
            (identical(other.total_stay_charges, total_stay_charges) ||
                other.total_stay_charges == total_stay_charges) &&
            (identical(other.travel_chrg_per_day, travel_chrg_per_day) ||
                other.travel_chrg_per_day == travel_chrg_per_day) &&
            (identical(other.travel_charges_days, travel_charges_days) ||
                other.travel_charges_days == travel_charges_days) &&
            (identical(other.total_travel_charges, total_travel_charges) ||
                other.total_travel_charges == total_travel_charges) &&
            (identical(other.others_details, others_details) ||
                other.others_details == others_details) &&
            (identical(other.other_chrg, other_chrg) ||
                other.other_chrg == other_chrg) &&
            (identical(other.total_claim, total_claim) ||
                other.total_claim == total_claim) &&
            (identical(other.advance_received, advance_received) ||
                other.advance_received == advance_received) &&
            (identical(other.reim_amt, reim_amt) ||
                other.reim_amt == reim_amt) &&
            (identical(other.creat_dt, creat_dt) ||
                other.creat_dt == creat_dt) &&
            (identical(other.me_id, me_id) || other.me_id == me_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.des_name, des_name) ||
                other.des_name == des_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        expenseId,
        name,
        head_quarters,
        exp_statement_no,
        period_from,
        period_to,
        date,
        departure_station,
        area_covered,
        opening_kms,
        closing_kms,
        total_kms,
        petrol_chrg_per_km,
        no_of_kms,
        total_petrol_charges,
        food_charges_per_day,
        food_charge_days,
        total_food_charges,
        beta_charges_per_day,
        beta_charge_days,
        total_beta_charges,
        stay_chrg_per_day,
        stay_charges_days,
        total_stay_charges,
        travel_chrg_per_day,
        travel_charges_days,
        total_travel_charges,
        others_details,
        other_chrg,
        total_claim,
        advance_received,
        reim_amt,
        creat_dt,
        me_id,
        status,
        des_name
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseListImplCopyWith<_$ExpenseListImpl> get copyWith =>
      __$$ExpenseListImplCopyWithImpl<_$ExpenseListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseListImplToJson(
      this,
    );
  }
}

abstract class _ExpenseList implements ExpenseList {
  const factory _ExpenseList(
      {@JsonKey(name: 'expense_id') final String? expenseId,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'head_quarters') final String? head_quarters,
      @JsonKey(name: 'exp_statement_no') final String? exp_statement_no,
      @JsonKey(name: 'period_from') final String? period_from,
      @JsonKey(name: 'period_to') final String? period_to,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'departure_station') final String? departure_station,
      @JsonKey(name: 'area_covered') final String? area_covered,
      @JsonKey(name: 'opening_kms') final String? opening_kms,
      @JsonKey(name: 'closing_kms') final String? closing_kms,
      @JsonKey(name: 'total_kms') final String? total_kms,
      @JsonKey(name: 'petrol_chrg_per_km') final String? petrol_chrg_per_km,
      @JsonKey(name: 'no_of_kms') final String? no_of_kms,
      @JsonKey(name: 'total_petrol_charges') final String? total_petrol_charges,
      @JsonKey(name: 'food_charges_per_day') final String? food_charges_per_day,
      @JsonKey(name: 'food_charge_days') final String? food_charge_days,
      @JsonKey(name: 'total_food_charges') final String? total_food_charges,
      @JsonKey(name: 'beta_charges_per_day') final String? beta_charges_per_day,
      @JsonKey(name: 'beta_charge_days') final String? beta_charge_days,
      @JsonKey(name: 'total_beta_charges') final String? total_beta_charges,
      @JsonKey(name: 'stay_chrg_per_day') final String? stay_chrg_per_day,
      @JsonKey(name: 'stay_charges_days') final String? stay_charges_days,
      @JsonKey(name: 'total_stay_charges') final String? total_stay_charges,
      @JsonKey(name: 'travel_chrg_per_day') final String? travel_chrg_per_day,
      @JsonKey(name: 'travel_charges_days') final String? travel_charges_days,
      @JsonKey(name: 'total_travel_charges') final String? total_travel_charges,
      @JsonKey(name: 'others_details') final String? others_details,
      @JsonKey(name: 'other_chrg') final String? other_chrg,
      @JsonKey(name: 'total_claim') final String? total_claim,
      @JsonKey(name: 'advance_received') final String? advance_received,
      @JsonKey(name: 'reim_amt') final String? reim_amt,
      @JsonKey(name: 'creat_dt') final String? creat_dt,
      @JsonKey(name: 'me_id') final String? me_id,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'des_name') final String? des_name}) = _$ExpenseListImpl;

  factory _ExpenseList.fromJson(Map<String, dynamic> json) =
      _$ExpenseListImpl.fromJson;

  @override
  @JsonKey(name: 'expense_id')
  String? get expenseId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'head_quarters')
  String? get head_quarters;
  @override
  @JsonKey(name: 'exp_statement_no')
  String? get exp_statement_no;
  @override
  @JsonKey(name: 'period_from')
  String? get period_from;
  @override
  @JsonKey(name: 'period_to')
  String? get period_to;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'departure_station')
  String? get departure_station;
  @override
  @JsonKey(name: 'area_covered')
  String? get area_covered;
  @override
  @JsonKey(name: 'opening_kms')
  String? get opening_kms;
  @override
  @JsonKey(name: 'closing_kms')
  String? get closing_kms;
  @override
  @JsonKey(name: 'total_kms')
  String? get total_kms;
  @override
  @JsonKey(name: 'petrol_chrg_per_km')
  String? get petrol_chrg_per_km;
  @override
  @JsonKey(name: 'no_of_kms')
  String? get no_of_kms;
  @override
  @JsonKey(name: 'total_petrol_charges')
  String? get total_petrol_charges;
  @override
  @JsonKey(name: 'food_charges_per_day')
  String? get food_charges_per_day;
  @override
  @JsonKey(name: 'food_charge_days')
  String? get food_charge_days;
  @override
  @JsonKey(name: 'total_food_charges')
  String? get total_food_charges;
  @override
  @JsonKey(name: 'beta_charges_per_day')
  String? get beta_charges_per_day;
  @override
  @JsonKey(name: 'beta_charge_days')
  String? get beta_charge_days;
  @override
  @JsonKey(name: 'total_beta_charges')
  String? get total_beta_charges;
  @override
  @JsonKey(name: 'stay_chrg_per_day')
  String? get stay_chrg_per_day;
  @override
  @JsonKey(name: 'stay_charges_days')
  String? get stay_charges_days;
  @override
  @JsonKey(name: 'total_stay_charges')
  String? get total_stay_charges;
  @override
  @JsonKey(name: 'travel_chrg_per_day')
  String? get travel_chrg_per_day;
  @override
  @JsonKey(name: 'travel_charges_days')
  String? get travel_charges_days;
  @override
  @JsonKey(name: 'total_travel_charges')
  String? get total_travel_charges;
  @override
  @JsonKey(name: 'others_details')
  String? get others_details;
  @override
  @JsonKey(name: 'other_chrg')
  String? get other_chrg;
  @override
  @JsonKey(name: 'total_claim')
  String? get total_claim;
  @override
  @JsonKey(name: 'advance_received')
  String? get advance_received;
  @override
  @JsonKey(name: 'reim_amt')
  String? get reim_amt;
  @override
  @JsonKey(name: 'creat_dt')
  String? get creat_dt;
  @override
  @JsonKey(name: 'me_id')
  String? get me_id;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'des_name')
  String? get des_name;
  @override
  @JsonKey(ignore: true)
  _$$ExpenseListImplCopyWith<_$ExpenseListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
