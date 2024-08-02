// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_list')
  List<OrderLIst>? get orderList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'order_list') List<OrderLIst>? orderList});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

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
              as List<OrderLIst>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'order_list') List<OrderLIst>? orderList});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? orderList = freezed,
  }) {
    return _then(_$OrderModelImpl(
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
              as List<OrderLIst>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {@JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'order_list') final List<OrderLIst>? orderList = const []})
      : _orderList = orderList;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<OrderLIst>? _orderList;
  @override
  @JsonKey(name: 'order_list')
  List<OrderLIst>? get orderList {
    final value = _orderList;
    if (value == null) return null;
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderModel(status: $status, message: $message, orderList: $orderList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
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
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'order_list') final List<OrderLIst>? orderList}) =
      _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'order_list')
  List<OrderLIst>? get orderList;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderLIst _$OrderLIstFromJson(Map<String, dynamic> json) {
  return _OrderLIst.fromJson(json);
}

/// @nodoc
mixin _$OrderLIst {
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_unique_id')
  String? get orderUniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dealer_id')
  String? get dealerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dealer_name')
  String? get dealerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cat_id')
  String? get catId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  String? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  String? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'mode_of_pay')
  String? get modeOfPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_days')
  String? get creditDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'me_dealer_id')
  String? get meDealerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_amount')
  String? get creditAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_status')
  String? get payStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'dispatch_img')
  String? get dispatchImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'dispatch_img2')
  String? get dispatchImgTwo => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_created')
  String? get orderCreated => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_path')
  String? get invoicePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_count')
  String? get orderCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderLIstCopyWith<OrderLIst> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderLIstCopyWith<$Res> {
  factory $OrderLIstCopyWith(OrderLIst value, $Res Function(OrderLIst) then) =
      _$OrderLIstCopyWithImpl<$Res, OrderLIst>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'order_unique_id') String? orderUniqueId,
      @JsonKey(name: 'dealer_id') String? dealerId,
      @JsonKey(name: 'dealer_name') String? dealerName,
      @JsonKey(name: 'cat_id') String? catId,
      @JsonKey(name: 'product') String? product,
      @JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'mode_of_pay') String? modeOfPay,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'credit_days') String? creditDays,
      @JsonKey(name: 'me_dealer_id') String? meDealerId,
      @JsonKey(name: 'credit_amount') String? creditAmount,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'pay_status') String? payStatus,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'dispatch_img') String? dispatchImg,
      @JsonKey(name: 'dispatch_img2') String? dispatchImgTwo,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'order_created') String? orderCreated,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'invoice_path') String? invoicePath,
      @JsonKey(name: 'order_count') String? orderCount});
}

/// @nodoc
class _$OrderLIstCopyWithImpl<$Res, $Val extends OrderLIst>
    implements $OrderLIstCopyWith<$Res> {
  _$OrderLIstCopyWithImpl(this._value, this._then);

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
    Object? creditDays = freezed,
    Object? meDealerId = freezed,
    Object? creditAmount = freezed,
    Object? orderStatus = freezed,
    Object? payStatus = freezed,
    Object? date = freezed,
    Object? dispatchImg = freezed,
    Object? dispatchImgTwo = freezed,
    Object? time = freezed,
    Object? orderCreated = freezed,
    Object? userType = freezed,
    Object? invoicePath = freezed,
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
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      modeOfPay: freezed == modeOfPay
          ? _value.modeOfPay
          : modeOfPay // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
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
      dispatchImg: freezed == dispatchImg
          ? _value.dispatchImg
          : dispatchImg // ignore: cast_nullable_to_non_nullable
              as String?,
      dispatchImgTwo: freezed == dispatchImgTwo
          ? _value.dispatchImgTwo
          : dispatchImgTwo // ignore: cast_nullable_to_non_nullable
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
      orderCount: freezed == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderLIstImplCopyWith<$Res>
    implements $OrderLIstCopyWith<$Res> {
  factory _$$OrderLIstImplCopyWith(
          _$OrderLIstImpl value, $Res Function(_$OrderLIstImpl) then) =
      __$$OrderLIstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'order_unique_id') String? orderUniqueId,
      @JsonKey(name: 'dealer_id') String? dealerId,
      @JsonKey(name: 'dealer_name') String? dealerName,
      @JsonKey(name: 'cat_id') String? catId,
      @JsonKey(name: 'product') String? product,
      @JsonKey(name: 'product_id') String? productId,
      @JsonKey(name: 'quantity') String? quantity,
      @JsonKey(name: 'mode_of_pay') String? modeOfPay,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'credit_days') String? creditDays,
      @JsonKey(name: 'me_dealer_id') String? meDealerId,
      @JsonKey(name: 'credit_amount') String? creditAmount,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'pay_status') String? payStatus,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'dispatch_img') String? dispatchImg,
      @JsonKey(name: 'dispatch_img2') String? dispatchImgTwo,
      @JsonKey(name: 'time') String? time,
      @JsonKey(name: 'order_created') String? orderCreated,
      @JsonKey(name: 'user_type') String? userType,
      @JsonKey(name: 'invoice_path') String? invoicePath,
      @JsonKey(name: 'order_count') String? orderCount});
}

/// @nodoc
class __$$OrderLIstImplCopyWithImpl<$Res>
    extends _$OrderLIstCopyWithImpl<$Res, _$OrderLIstImpl>
    implements _$$OrderLIstImplCopyWith<$Res> {
  __$$OrderLIstImplCopyWithImpl(
      _$OrderLIstImpl _value, $Res Function(_$OrderLIstImpl) _then)
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
    Object? creditDays = freezed,
    Object? meDealerId = freezed,
    Object? creditAmount = freezed,
    Object? orderStatus = freezed,
    Object? payStatus = freezed,
    Object? date = freezed,
    Object? dispatchImg = freezed,
    Object? dispatchImgTwo = freezed,
    Object? time = freezed,
    Object? orderCreated = freezed,
    Object? userType = freezed,
    Object? invoicePath = freezed,
    Object? orderCount = freezed,
  }) {
    return _then(_$OrderLIstImpl(
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
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      modeOfPay: freezed == modeOfPay
          ? _value.modeOfPay
          : modeOfPay // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      creditDays: freezed == creditDays
          ? _value.creditDays
          : creditDays // ignore: cast_nullable_to_non_nullable
              as String?,
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
      dispatchImg: freezed == dispatchImg
          ? _value.dispatchImg
          : dispatchImg // ignore: cast_nullable_to_non_nullable
              as String?,
      dispatchImgTwo: freezed == dispatchImgTwo
          ? _value.dispatchImgTwo
          : dispatchImgTwo // ignore: cast_nullable_to_non_nullable
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
      orderCount: freezed == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderLIstImpl implements _OrderLIst {
  const _$OrderLIstImpl(
      {@JsonKey(name: 'order_id') this.orderId = '',
      @JsonKey(name: 'order_unique_id') this.orderUniqueId = '',
      @JsonKey(name: 'dealer_id') this.dealerId = '',
      @JsonKey(name: 'dealer_name') this.dealerName = '',
      @JsonKey(name: 'cat_id') this.catId = '',
      @JsonKey(name: 'product') this.product = '',
      @JsonKey(name: 'product_id') this.productId = '',
      @JsonKey(name: 'quantity') this.quantity = '',
      @JsonKey(name: 'mode_of_pay') this.modeOfPay = '',
      @JsonKey(name: 'amount') this.amount = '',
      @JsonKey(name: 'credit_days') this.creditDays = '',
      @JsonKey(name: 'me_dealer_id') this.meDealerId = '',
      @JsonKey(name: 'credit_amount') this.creditAmount = '',
      @JsonKey(name: 'order_status') this.orderStatus = '',
      @JsonKey(name: 'pay_status') this.payStatus = '',
      @JsonKey(name: 'date') this.date = '',
      @JsonKey(name: 'dispatch_img') this.dispatchImg = '',
      @JsonKey(name: 'dispatch_img2') this.dispatchImgTwo = '',
      @JsonKey(name: 'time') this.time = '',
      @JsonKey(name: 'order_created') this.orderCreated = '',
      @JsonKey(name: 'user_type') this.userType = '',
      @JsonKey(name: 'invoice_path') this.invoicePath = '',
      @JsonKey(name: 'order_count') this.orderCount = ''});

  factory _$OrderLIstImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderLIstImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'order_unique_id')
  final String? orderUniqueId;
  @override
  @JsonKey(name: 'dealer_id')
  final String? dealerId;
  @override
  @JsonKey(name: 'dealer_name')
  final String? dealerName;
  @override
  @JsonKey(name: 'cat_id')
  final String? catId;
  @override
  @JsonKey(name: 'product')
  final String? product;
  @override
  @JsonKey(name: 'product_id')
  final String? productId;
  @override
  @JsonKey(name: 'quantity')
  final String? quantity;
  @override
  @JsonKey(name: 'mode_of_pay')
  final String? modeOfPay;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'credit_days')
  final String? creditDays;
  @override
  @JsonKey(name: 'me_dealer_id')
  final String? meDealerId;
  @override
  @JsonKey(name: 'credit_amount')
  final String? creditAmount;
  @override
  @JsonKey(name: 'order_status')
  final String? orderStatus;
  @override
  @JsonKey(name: 'pay_status')
  final String? payStatus;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'dispatch_img')
  final String? dispatchImg;
  @override
  @JsonKey(name: 'dispatch_img2')
  final String? dispatchImgTwo;
  @override
  @JsonKey(name: 'time')
  final String? time;
  @override
  @JsonKey(name: 'order_created')
  final String? orderCreated;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  @JsonKey(name: 'invoice_path')
  final String? invoicePath;
  @override
  @JsonKey(name: 'order_count')
  final String? orderCount;

  @override
  String toString() {
    return 'OrderLIst(orderId: $orderId, orderUniqueId: $orderUniqueId, dealerId: $dealerId, dealerName: $dealerName, catId: $catId, product: $product, productId: $productId, quantity: $quantity, modeOfPay: $modeOfPay, amount: $amount, creditDays: $creditDays, meDealerId: $meDealerId, creditAmount: $creditAmount, orderStatus: $orderStatus, payStatus: $payStatus, date: $date, dispatchImg: $dispatchImg, dispatchImgTwo: $dispatchImgTwo, time: $time, orderCreated: $orderCreated, userType: $userType, invoicePath: $invoicePath, orderCount: $orderCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderLIstImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderUniqueId, orderUniqueId) ||
                other.orderUniqueId == orderUniqueId) &&
            (identical(other.dealerId, dealerId) ||
                other.dealerId == dealerId) &&
            (identical(other.dealerName, dealerName) ||
                other.dealerName == dealerName) &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.modeOfPay, modeOfPay) ||
                other.modeOfPay == modeOfPay) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.creditDays, creditDays) ||
                other.creditDays == creditDays) &&
            (identical(other.meDealerId, meDealerId) ||
                other.meDealerId == meDealerId) &&
            (identical(other.creditAmount, creditAmount) ||
                other.creditAmount == creditAmount) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.payStatus, payStatus) ||
                other.payStatus == payStatus) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dispatchImg, dispatchImg) ||
                other.dispatchImg == dispatchImg) &&
            (identical(other.dispatchImgTwo, dispatchImgTwo) ||
                other.dispatchImgTwo == dispatchImgTwo) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.orderCreated, orderCreated) ||
                other.orderCreated == orderCreated) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.invoicePath, invoicePath) ||
                other.invoicePath == invoicePath) &&
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
        catId,
        product,
        productId,
        quantity,
        modeOfPay,
        amount,
        creditDays,
        meDealerId,
        creditAmount,
        orderStatus,
        payStatus,
        date,
        dispatchImg,
        dispatchImgTwo,
        time,
        orderCreated,
        userType,
        invoicePath,
        orderCount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderLIstImplCopyWith<_$OrderLIstImpl> get copyWith =>
      __$$OrderLIstImplCopyWithImpl<_$OrderLIstImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderLIstImplToJson(
      this,
    );
  }
}

abstract class _OrderLIst implements OrderLIst {
  const factory _OrderLIst(
          {@JsonKey(name: 'order_id') final String? orderId,
          @JsonKey(name: 'order_unique_id') final String? orderUniqueId,
          @JsonKey(name: 'dealer_id') final String? dealerId,
          @JsonKey(name: 'dealer_name') final String? dealerName,
          @JsonKey(name: 'cat_id') final String? catId,
          @JsonKey(name: 'product') final String? product,
          @JsonKey(name: 'product_id') final String? productId,
          @JsonKey(name: 'quantity') final String? quantity,
          @JsonKey(name: 'mode_of_pay') final String? modeOfPay,
          @JsonKey(name: 'amount') final String? amount,
          @JsonKey(name: 'credit_days') final String? creditDays,
          @JsonKey(name: 'me_dealer_id') final String? meDealerId,
          @JsonKey(name: 'credit_amount') final String? creditAmount,
          @JsonKey(name: 'order_status') final String? orderStatus,
          @JsonKey(name: 'pay_status') final String? payStatus,
          @JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'dispatch_img') final String? dispatchImg,
          @JsonKey(name: 'dispatch_img2') final String? dispatchImgTwo,
          @JsonKey(name: 'time') final String? time,
          @JsonKey(name: 'order_created') final String? orderCreated,
          @JsonKey(name: 'user_type') final String? userType,
          @JsonKey(name: 'invoice_path') final String? invoicePath,
          @JsonKey(name: 'order_count') final String? orderCount}) =
      _$OrderLIstImpl;

  factory _OrderLIst.fromJson(Map<String, dynamic> json) =
      _$OrderLIstImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'order_unique_id')
  String? get orderUniqueId;
  @override
  @JsonKey(name: 'dealer_id')
  String? get dealerId;
  @override
  @JsonKey(name: 'dealer_name')
  String? get dealerName;
  @override
  @JsonKey(name: 'cat_id')
  String? get catId;
  @override
  @JsonKey(name: 'product')
  String? get product;
  @override
  @JsonKey(name: 'product_id')
  String? get productId;
  @override
  @JsonKey(name: 'quantity')
  String? get quantity;
  @override
  @JsonKey(name: 'mode_of_pay')
  String? get modeOfPay;
  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'credit_days')
  String? get creditDays;
  @override
  @JsonKey(name: 'me_dealer_id')
  String? get meDealerId;
  @override
  @JsonKey(name: 'credit_amount')
  String? get creditAmount;
  @override
  @JsonKey(name: 'order_status')
  String? get orderStatus;
  @override
  @JsonKey(name: 'pay_status')
  String? get payStatus;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'dispatch_img')
  String? get dispatchImg;
  @override
  @JsonKey(name: 'dispatch_img2')
  String? get dispatchImgTwo;
  @override
  @JsonKey(name: 'time')
  String? get time;
  @override
  @JsonKey(name: 'order_created')
  String? get orderCreated;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  @JsonKey(name: 'invoice_path')
  String? get invoicePath;
  @override
  @JsonKey(name: 'order_count')
  String? get orderCount;
  @override
  @JsonKey(ignore: true)
  _$$OrderLIstImplCopyWith<_$OrderLIstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
