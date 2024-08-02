// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReturnModel _$ReturnModelFromJson(Map<String, dynamic> json) {
  return _ReturnModel.fromJson(json);
}

/// @nodoc
mixin _$ReturnModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "order_list")
  List<OrderList>? get orderList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnModelCopyWith<ReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnModelCopyWith<$Res> {
  factory $ReturnModelCopyWith(
          ReturnModel value, $Res Function(ReturnModel) then) =
      _$ReturnModelCopyWithImpl<$Res, ReturnModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "order_list") List<OrderList>? orderList});
}

/// @nodoc
class _$ReturnModelCopyWithImpl<$Res, $Val extends ReturnModel>
    implements $ReturnModelCopyWith<$Res> {
  _$ReturnModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? orderList = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orderList: freezed == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnModelImplCopyWith<$Res>
    implements $ReturnModelCopyWith<$Res> {
  factory _$$ReturnModelImplCopyWith(
          _$ReturnModelImpl value, $Res Function(_$ReturnModelImpl) then) =
      __$$ReturnModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "order_list") List<OrderList>? orderList});
}

/// @nodoc
class __$$ReturnModelImplCopyWithImpl<$Res>
    extends _$ReturnModelCopyWithImpl<$Res, _$ReturnModelImpl>
    implements _$$ReturnModelImplCopyWith<$Res> {
  __$$ReturnModelImplCopyWithImpl(
      _$ReturnModelImpl _value, $Res Function(_$ReturnModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? orderList = freezed,
  }) {
    return _then(_$ReturnModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      orderList: freezed == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnModelImpl implements _ReturnModel {
  const _$ReturnModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "order_list") final List<OrderList>? orderList})
      : _orderList = orderList;

  factory _$ReturnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<OrderList>? _orderList;
  @override
  @JsonKey(name: "order_list")
  List<OrderList>? get orderList {
    final value = _orderList;
    if (value == null) return null;
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReturnModel(status: $status, message: $message, orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message,
      const DeepCollectionEquality().hash(_orderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnModelImplCopyWith<_$ReturnModelImpl> get copyWith =>
      __$$ReturnModelImplCopyWithImpl<_$ReturnModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnModelImplToJson(
      this,
    );
  }
}

abstract class _ReturnModel implements ReturnModel {
  const factory _ReturnModel(
          {@JsonKey(name: "status") final String? status,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "order_list") final List<OrderList>? orderList}) =
      _$ReturnModelImpl;

  factory _ReturnModel.fromJson(Map<String, dynamic> json) =
      _$ReturnModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "order_list")
  List<OrderList>? get orderList;
  @override
  @JsonKey(ignore: true)
  _$$ReturnModelImplCopyWith<_$ReturnModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderList _$OrderListFromJson(Map<String, dynamic> json) {
  return _OrderList.fromJson(json);
}

/// @nodoc
mixin _$OrderList {
  @JsonKey(name: "order_id")
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_unique_id")
  String? get orderUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "dealer_id")
  String? get dealerId => throw _privateConstructorUsedError;
  @JsonKey(name: "dealer_name")
  String? get dealerName => throw _privateConstructorUsedError;
  @JsonKey(name: "cat_id")
  dynamic get catId => throw _privateConstructorUsedError;
  @JsonKey(name: "product")
  dynamic get product => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  dynamic get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "mode_of_pay")
  String? get modeOfPay => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "paid_amount")
  String? get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "transfer_id")
  String? get transferId => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_days")
  dynamic get creditDays => throw _privateConstructorUsedError;
  @JsonKey(name: "me_dealer_id")
  String? get meDealerId => throw _privateConstructorUsedError;
  @JsonKey(name: "credit_amount")
  String? get creditAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "order_status")
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "pay_status")
  String? get payStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "order_created")
  String? get orderCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "user_type")
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_path")
  String? get invoicePath => throw _privateConstructorUsedError;
  @JsonKey(name: "dispatch_img")
  String? get dispatchImg => throw _privateConstructorUsedError;
  @JsonKey(name: "dispatch_img2")
  String? get dispatchImg2 => throw _privateConstructorUsedError;
  @JsonKey(name: "balance_credit")
  dynamic get balanceCredit => throw _privateConstructorUsedError;
  @JsonKey(name: "retrun_reason")
  String? get retrunReason => throw _privateConstructorUsedError;
  @JsonKey(name: "delivered_date")
  String? get deliveredDate => throw _privateConstructorUsedError;
  @JsonKey(name: "retrun_status")
  String? get retrunStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "order_count")
  String? get orderCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderListCopyWith<OrderList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderListCopyWith<$Res> {
  factory $OrderListCopyWith(OrderList value, $Res Function(OrderList) then) =
      _$OrderListCopyWithImpl<$Res, OrderList>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "order_unique_id") String? orderUniqueId,
      @JsonKey(name: "dealer_id") String? dealerId,
      @JsonKey(name: "dealer_name") String? dealerName,
      @JsonKey(name: "cat_id") dynamic catId,
      @JsonKey(name: "product") dynamic product,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "quantity") dynamic quantity,
      @JsonKey(name: "mode_of_pay") String? modeOfPay,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "paid_amount") String? paidAmount,
      @JsonKey(name: "transfer_id") String? transferId,
      @JsonKey(name: "credit_days") dynamic creditDays,
      @JsonKey(name: "me_dealer_id") String? meDealerId,
      @JsonKey(name: "credit_amount") String? creditAmount,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "pay_status") String? payStatus,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "order_created") String? orderCreated,
      @JsonKey(name: "user_type") String? userType,
      @JsonKey(name: "invoice_path") String? invoicePath,
      @JsonKey(name: "dispatch_img") String? dispatchImg,
      @JsonKey(name: "dispatch_img2") String? dispatchImg2,
      @JsonKey(name: "balance_credit") dynamic balanceCredit,
      @JsonKey(name: "retrun_reason") String? retrunReason,
      @JsonKey(name: "delivered_date") String? deliveredDate,
      @JsonKey(name: "retrun_status") String? retrunStatus,
      @JsonKey(name: "order_count") String? orderCount});
}

/// @nodoc
class _$OrderListCopyWithImpl<$Res, $Val extends OrderList>
    implements $OrderListCopyWith<$Res> {
  _$OrderListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderUniqueId = freezed,
    Object? dealerId = freezed,
    Object? dealerName = freezed,
    Object? catId = freezed,
    Object? product = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? modeOfPay = freezed,
    Object? amount = freezed,
    Object? paidAmount = freezed,
    Object? transferId = freezed,
    Object? creditDays = freezed,
    Object? meDealerId = freezed,
    Object? creditAmount = freezed,
    Object? orderStatus = freezed,
    Object? payStatus = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? orderCreated = freezed,
    Object? userType = freezed,
    Object? invoicePath = freezed,
    Object? dispatchImg = freezed,
    Object? dispatchImg2 = freezed,
    Object? balanceCredit = freezed,
    Object? retrunReason = freezed,
    Object? deliveredDate = freezed,
    Object? retrunStatus = freezed,
    Object? orderCount = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderUniqueId: freezed == orderUniqueId
          ? _value.orderUniqueId
          : orderUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerName: freezed == dealerName
          ? _value.dealerName
          : dealerName // ignore: cast_nullable_to_non_nullable
              as String?,
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      modeOfPay: freezed == modeOfPay
          ? _value.modeOfPay
          : modeOfPay // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      transferId: freezed == transferId
          ? _value.transferId
          : transferId // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meDealerId: freezed == meDealerId
          ? _value.meDealerId
          : meDealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount: freezed == creditAmount
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      payStatus: freezed == payStatus
          ? _value.payStatus
          : payStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCreated: freezed == orderCreated
          ? _value.orderCreated
          : orderCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicePath: freezed == invoicePath
          ? _value.invoicePath
          : invoicePath // ignore: cast_nullable_to_non_nullable
              as String?,
      dispatchImg: freezed == dispatchImg
          ? _value.dispatchImg
          : dispatchImg // ignore: cast_nullable_to_non_nullable
              as String?,
      dispatchImg2: freezed == dispatchImg2
          ? _value.dispatchImg2
          : dispatchImg2 // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceCredit: freezed == balanceCredit
          ? _value.balanceCredit
          : balanceCredit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      retrunReason: freezed == retrunReason
          ? _value.retrunReason
          : retrunReason // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredDate: freezed == deliveredDate
          ? _value.deliveredDate
          : deliveredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      retrunStatus: freezed == retrunStatus
          ? _value.retrunStatus
          : retrunStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCount: freezed == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderListImplCopyWith<$Res>
    implements $OrderListCopyWith<$Res> {
  factory _$$OrderListImplCopyWith(
          _$OrderListImpl value, $Res Function(_$OrderListImpl) then) =
      __$$OrderListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") String? orderId,
      @JsonKey(name: "order_unique_id") String? orderUniqueId,
      @JsonKey(name: "dealer_id") String? dealerId,
      @JsonKey(name: "dealer_name") String? dealerName,
      @JsonKey(name: "cat_id") dynamic catId,
      @JsonKey(name: "product") dynamic product,
      @JsonKey(name: "product_id") String? productId,
      @JsonKey(name: "quantity") dynamic quantity,
      @JsonKey(name: "mode_of_pay") String? modeOfPay,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "paid_amount") String? paidAmount,
      @JsonKey(name: "transfer_id") String? transferId,
      @JsonKey(name: "credit_days") dynamic creditDays,
      @JsonKey(name: "me_dealer_id") String? meDealerId,
      @JsonKey(name: "credit_amount") String? creditAmount,
      @JsonKey(name: "order_status") String? orderStatus,
      @JsonKey(name: "pay_status") String? payStatus,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "time") String? time,
      @JsonKey(name: "order_created") String? orderCreated,
      @JsonKey(name: "user_type") String? userType,
      @JsonKey(name: "invoice_path") String? invoicePath,
      @JsonKey(name: "dispatch_img") String? dispatchImg,
      @JsonKey(name: "dispatch_img2") String? dispatchImg2,
      @JsonKey(name: "balance_credit") dynamic balanceCredit,
      @JsonKey(name: "retrun_reason") String? retrunReason,
      @JsonKey(name: "delivered_date") String? deliveredDate,
      @JsonKey(name: "retrun_status") String? retrunStatus,
      @JsonKey(name: "order_count") String? orderCount});
}

/// @nodoc
class __$$OrderListImplCopyWithImpl<$Res>
    extends _$OrderListCopyWithImpl<$Res, _$OrderListImpl>
    implements _$$OrderListImplCopyWith<$Res> {
  __$$OrderListImplCopyWithImpl(
      _$OrderListImpl _value, $Res Function(_$OrderListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? orderUniqueId = freezed,
    Object? dealerId = freezed,
    Object? dealerName = freezed,
    Object? catId = freezed,
    Object? product = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? modeOfPay = freezed,
    Object? amount = freezed,
    Object? paidAmount = freezed,
    Object? transferId = freezed,
    Object? creditDays = freezed,
    Object? meDealerId = freezed,
    Object? creditAmount = freezed,
    Object? orderStatus = freezed,
    Object? payStatus = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? orderCreated = freezed,
    Object? userType = freezed,
    Object? invoicePath = freezed,
    Object? dispatchImg = freezed,
    Object? dispatchImg2 = freezed,
    Object? balanceCredit = freezed,
    Object? retrunReason = freezed,
    Object? deliveredDate = freezed,
    Object? retrunStatus = freezed,
    Object? orderCount = freezed,
  }) {
    return _then(_$OrderListImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderUniqueId: freezed == orderUniqueId
          ? _value.orderUniqueId
          : orderUniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      dealerName: freezed == dealerName
          ? _value.dealerName
          : dealerName // ignore: cast_nullable_to_non_nullable
              as String?,
      catId: freezed == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      modeOfPay: freezed == modeOfPay
          ? _value.modeOfPay
          : modeOfPay // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      transferId: freezed == transferId
          ? _value.transferId
          : transferId // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meDealerId: freezed == meDealerId
          ? _value.meDealerId
          : meDealerId // ignore: cast_nullable_to_non_nullable
              as String?,
      creditAmount: freezed == creditAmount
          ? _value.creditAmount
          : creditAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      payStatus: freezed == payStatus
          ? _value.payStatus
          : payStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCreated: freezed == orderCreated
          ? _value.orderCreated
          : orderCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      invoicePath: freezed == invoicePath
          ? _value.invoicePath
          : invoicePath // ignore: cast_nullable_to_non_nullable
              as String?,
      dispatchImg: freezed == dispatchImg
          ? _value.dispatchImg
          : dispatchImg // ignore: cast_nullable_to_non_nullable
              as String?,
      dispatchImg2: freezed == dispatchImg2
          ? _value.dispatchImg2
          : dispatchImg2 // ignore: cast_nullable_to_non_nullable
              as String?,
      balanceCredit: freezed == balanceCredit
          ? _value.balanceCredit
          : balanceCredit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      retrunReason: freezed == retrunReason
          ? _value.retrunReason
          : retrunReason // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveredDate: freezed == deliveredDate
          ? _value.deliveredDate
          : deliveredDate // ignore: cast_nullable_to_non_nullable
              as String?,
      retrunStatus: freezed == retrunStatus
          ? _value.retrunStatus
          : retrunStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      orderCount: freezed == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderListImpl implements _OrderList {
  const _$OrderListImpl(
      {@JsonKey(name: "order_id") this.orderId,
      @JsonKey(name: "order_unique_id") this.orderUniqueId,
      @JsonKey(name: "dealer_id") this.dealerId,
      @JsonKey(name: "dealer_name") this.dealerName,
      @JsonKey(name: "cat_id") this.catId,
      @JsonKey(name: "product") this.product,
      @JsonKey(name: "product_id") this.productId,
      @JsonKey(name: "quantity") this.quantity,
      @JsonKey(name: "mode_of_pay") this.modeOfPay,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "paid_amount") this.paidAmount,
      @JsonKey(name: "transfer_id") this.transferId,
      @JsonKey(name: "credit_days") this.creditDays,
      @JsonKey(name: "me_dealer_id") this.meDealerId,
      @JsonKey(name: "credit_amount") this.creditAmount,
      @JsonKey(name: "order_status") this.orderStatus,
      @JsonKey(name: "pay_status") this.payStatus,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "order_created") this.orderCreated,
      @JsonKey(name: "user_type") this.userType,
      @JsonKey(name: "invoice_path") this.invoicePath,
      @JsonKey(name: "dispatch_img") this.dispatchImg,
      @JsonKey(name: "dispatch_img2") this.dispatchImg2,
      @JsonKey(name: "balance_credit") this.balanceCredit,
      @JsonKey(name: "retrun_reason") this.retrunReason,
      @JsonKey(name: "delivered_date") this.deliveredDate,
      @JsonKey(name: "retrun_status") this.retrunStatus,
      @JsonKey(name: "order_count") this.orderCount});

  factory _$OrderListImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderListImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final String? orderId;
  @override
  @JsonKey(name: "order_unique_id")
  final String? orderUniqueId;
  @override
  @JsonKey(name: "dealer_id")
  final String? dealerId;
  @override
  @JsonKey(name: "dealer_name")
  final String? dealerName;
  @override
  @JsonKey(name: "cat_id")
  final dynamic catId;
  @override
  @JsonKey(name: "product")
  final dynamic product;
  @override
  @JsonKey(name: "product_id")
  final String? productId;
  @override
  @JsonKey(name: "quantity")
  final dynamic quantity;
  @override
  @JsonKey(name: "mode_of_pay")
  final String? modeOfPay;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "paid_amount")
  final String? paidAmount;
  @override
  @JsonKey(name: "transfer_id")
  final String? transferId;
  @override
  @JsonKey(name: "credit_days")
  final dynamic creditDays;
  @override
  @JsonKey(name: "me_dealer_id")
  final String? meDealerId;
  @override
  @JsonKey(name: "credit_amount")
  final String? creditAmount;
  @override
  @JsonKey(name: "order_status")
  final String? orderStatus;
  @override
  @JsonKey(name: "pay_status")
  final String? payStatus;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "time")
  final String? time;
  @override
  @JsonKey(name: "order_created")
  final String? orderCreated;
  @override
  @JsonKey(name: "user_type")
  final String? userType;
  @override
  @JsonKey(name: "invoice_path")
  final String? invoicePath;
  @override
  @JsonKey(name: "dispatch_img")
  final String? dispatchImg;
  @override
  @JsonKey(name: "dispatch_img2")
  final String? dispatchImg2;
  @override
  @JsonKey(name: "balance_credit")
  final dynamic balanceCredit;
  @override
  @JsonKey(name: "retrun_reason")
  final String? retrunReason;
  @override
  @JsonKey(name: "delivered_date")
  final String? deliveredDate;
  @override
  @JsonKey(name: "retrun_status")
  final String? retrunStatus;
  @override
  @JsonKey(name: "order_count")
  final String? orderCount;

  @override
  String toString() {
    return 'OrderList(orderId: $orderId, orderUniqueId: $orderUniqueId, dealerId: $dealerId, dealerName: $dealerName, catId: $catId, product: $product, productId: $productId, quantity: $quantity, modeOfPay: $modeOfPay, amount: $amount, paidAmount: $paidAmount, transferId: $transferId, creditDays: $creditDays, meDealerId: $meDealerId, creditAmount: $creditAmount, orderStatus: $orderStatus, payStatus: $payStatus, date: $date, time: $time, orderCreated: $orderCreated, userType: $userType, invoicePath: $invoicePath, dispatchImg: $dispatchImg, dispatchImg2: $dispatchImg2, balanceCredit: $balanceCredit, retrunReason: $retrunReason, deliveredDate: $deliveredDate, retrunStatus: $retrunStatus, orderCount: $orderCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderListImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderUniqueId, orderUniqueId) ||
                other.orderUniqueId == orderUniqueId) &&
            (identical(other.dealerId, dealerId) ||
                other.dealerId == dealerId) &&
            (identical(other.dealerName, dealerName) ||
                other.dealerName == dealerName) &&
            const DeepCollectionEquality().equals(other.catId, catId) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            (identical(other.modeOfPay, modeOfPay) ||
                other.modeOfPay == modeOfPay) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.transferId, transferId) ||
                other.transferId == transferId) &&
            const DeepCollectionEquality()
                .equals(other.creditDays, creditDays) &&
            (identical(other.meDealerId, meDealerId) ||
                other.meDealerId == meDealerId) &&
            (identical(other.creditAmount, creditAmount) ||
                other.creditAmount == creditAmount) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.payStatus, payStatus) ||
                other.payStatus == payStatus) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.orderCreated, orderCreated) ||
                other.orderCreated == orderCreated) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.invoicePath, invoicePath) ||
                other.invoicePath == invoicePath) &&
            (identical(other.dispatchImg, dispatchImg) ||
                other.dispatchImg == dispatchImg) &&
            (identical(other.dispatchImg2, dispatchImg2) ||
                other.dispatchImg2 == dispatchImg2) &&
            const DeepCollectionEquality()
                .equals(other.balanceCredit, balanceCredit) &&
            (identical(other.retrunReason, retrunReason) ||
                other.retrunReason == retrunReason) &&
            (identical(other.deliveredDate, deliveredDate) ||
                other.deliveredDate == deliveredDate) &&
            (identical(other.retrunStatus, retrunStatus) ||
                other.retrunStatus == retrunStatus) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        orderId,
        orderUniqueId,
        dealerId,
        dealerName,
        const DeepCollectionEquality().hash(catId),
        const DeepCollectionEquality().hash(product),
        productId,
        const DeepCollectionEquality().hash(quantity),
        modeOfPay,
        amount,
        paidAmount,
        transferId,
        const DeepCollectionEquality().hash(creditDays),
        meDealerId,
        creditAmount,
        orderStatus,
        payStatus,
        date,
        time,
        orderCreated,
        userType,
        invoicePath,
        dispatchImg,
        dispatchImg2,
        const DeepCollectionEquality().hash(balanceCredit),
        retrunReason,
        deliveredDate,
        retrunStatus,
        orderCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderListImplCopyWith<_$OrderListImpl> get copyWith =>
      __$$OrderListImplCopyWithImpl<_$OrderListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderListImplToJson(
      this,
    );
  }
}

abstract class _OrderList implements OrderList {
  const factory _OrderList(
          {@JsonKey(name: "order_id") final String? orderId,
          @JsonKey(name: "order_unique_id") final String? orderUniqueId,
          @JsonKey(name: "dealer_id") final String? dealerId,
          @JsonKey(name: "dealer_name") final String? dealerName,
          @JsonKey(name: "cat_id") final dynamic catId,
          @JsonKey(name: "product") final dynamic product,
          @JsonKey(name: "product_id") final String? productId,
          @JsonKey(name: "quantity") final dynamic quantity,
          @JsonKey(name: "mode_of_pay") final String? modeOfPay,
          @JsonKey(name: "amount") final String? amount,
          @JsonKey(name: "paid_amount") final String? paidAmount,
          @JsonKey(name: "transfer_id") final String? transferId,
          @JsonKey(name: "credit_days") final dynamic creditDays,
          @JsonKey(name: "me_dealer_id") final String? meDealerId,
          @JsonKey(name: "credit_amount") final String? creditAmount,
          @JsonKey(name: "order_status") final String? orderStatus,
          @JsonKey(name: "pay_status") final String? payStatus,
          @JsonKey(name: "date") final String? date,
          @JsonKey(name: "time") final String? time,
          @JsonKey(name: "order_created") final String? orderCreated,
          @JsonKey(name: "user_type") final String? userType,
          @JsonKey(name: "invoice_path") final String? invoicePath,
          @JsonKey(name: "dispatch_img") final String? dispatchImg,
          @JsonKey(name: "dispatch_img2") final String? dispatchImg2,
          @JsonKey(name: "balance_credit") final dynamic balanceCredit,
          @JsonKey(name: "retrun_reason") final String? retrunReason,
          @JsonKey(name: "delivered_date") final String? deliveredDate,
          @JsonKey(name: "retrun_status") final String? retrunStatus,
          @JsonKey(name: "order_count") final String? orderCount}) =
      _$OrderListImpl;

  factory _OrderList.fromJson(Map<String, dynamic> json) =
      _$OrderListImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  String? get orderId;
  @override
  @JsonKey(name: "order_unique_id")
  String? get orderUniqueId;
  @override
  @JsonKey(name: "dealer_id")
  String? get dealerId;
  @override
  @JsonKey(name: "dealer_name")
  String? get dealerName;
  @override
  @JsonKey(name: "cat_id")
  dynamic get catId;
  @override
  @JsonKey(name: "product")
  dynamic get product;
  @override
  @JsonKey(name: "product_id")
  String? get productId;
  @override
  @JsonKey(name: "quantity")
  dynamic get quantity;
  @override
  @JsonKey(name: "mode_of_pay")
  String? get modeOfPay;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "paid_amount")
  String? get paidAmount;
  @override
  @JsonKey(name: "transfer_id")
  String? get transferId;
  @override
  @JsonKey(name: "credit_days")
  dynamic get creditDays;
  @override
  @JsonKey(name: "me_dealer_id")
  String? get meDealerId;
  @override
  @JsonKey(name: "credit_amount")
  String? get creditAmount;
  @override
  @JsonKey(name: "order_status")
  String? get orderStatus;
  @override
  @JsonKey(name: "pay_status")
  String? get payStatus;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "time")
  String? get time;
  @override
  @JsonKey(name: "order_created")
  String? get orderCreated;
  @override
  @JsonKey(name: "user_type")
  String? get userType;
  @override
  @JsonKey(name: "invoice_path")
  String? get invoicePath;
  @override
  @JsonKey(name: "dispatch_img")
  String? get dispatchImg;
  @override
  @JsonKey(name: "dispatch_img2")
  String? get dispatchImg2;
  @override
  @JsonKey(name: "balance_credit")
  dynamic get balanceCredit;
  @override
  @JsonKey(name: "retrun_reason")
  String? get retrunReason;
  @override
  @JsonKey(name: "delivered_date")
  String? get deliveredDate;
  @override
  @JsonKey(name: "retrun_status")
  String? get retrunStatus;
  @override
  @JsonKey(name: "order_count")
  String? get orderCount;
  @override
  @JsonKey(ignore: true)
  _$$OrderListImplCopyWith<_$OrderListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
