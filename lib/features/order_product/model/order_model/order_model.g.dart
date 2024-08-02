// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      orderList: (json['order_list'] as List<dynamic>?)
              ?.map((e) => OrderLIst.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'order_list': instance.orderList,
    };

_$OrderLIstImpl _$$OrderLIstImplFromJson(Map<String, dynamic> json) =>
    _$OrderLIstImpl(
      orderId: json['order_id'] as String? ?? '',
      orderUniqueId: json['order_unique_id'] as String? ?? '',
      dealerId: json['dealer_id'] as String? ?? '',
      dealerName: json['dealer_name'] as String? ?? '',
      catId: json['cat_id'] as String? ?? '',
      product: json['product'] as String? ?? '',
      productId: json['product_id'] as String? ?? '',
      quantity: json['quantity'] as String? ?? '',
      modeOfPay: json['mode_of_pay'] as String? ?? '',
      amount: json['amount'] as String? ?? '',
      creditDays: json['credit_days'] as String? ?? '',
      meDealerId: json['me_dealer_id'] as String? ?? '',
      creditAmount: json['credit_amount'] as String? ?? '',
      orderStatus: json['order_status'] as String? ?? '',
      payStatus: json['pay_status'] as String? ?? '',
      date: json['date'] as String? ?? '',
      dispatchImg: json['dispatch_img'] as String? ?? '',
      dispatchImgTwo: json['dispatch_img2'] as String? ?? '',
      time: json['time'] as String? ?? '',
      orderCreated: json['order_created'] as String? ?? '',
      userType: json['user_type'] as String? ?? '',
      invoicePath: json['invoice_path'] as String? ?? '',
      orderCount: json['order_count'] as String? ?? '',
    );

Map<String, dynamic> _$$OrderLIstImplToJson(_$OrderLIstImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'order_unique_id': instance.orderUniqueId,
      'dealer_id': instance.dealerId,
      'dealer_name': instance.dealerName,
      'cat_id': instance.catId,
      'product': instance.product,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'mode_of_pay': instance.modeOfPay,
      'amount': instance.amount,
      'credit_days': instance.creditDays,
      'me_dealer_id': instance.meDealerId,
      'credit_amount': instance.creditAmount,
      'order_status': instance.orderStatus,
      'pay_status': instance.payStatus,
      'date': instance.date,
      'dispatch_img': instance.dispatchImg,
      'dispatch_img2': instance.dispatchImgTwo,
      'time': instance.time,
      'order_created': instance.orderCreated,
      'user_type': instance.userType,
      'invoice_path': instance.invoicePath,
      'order_count': instance.orderCount,
    };
