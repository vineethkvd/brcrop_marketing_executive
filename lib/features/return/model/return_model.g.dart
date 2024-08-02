// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReturnModelImpl _$$ReturnModelImplFromJson(Map<String, dynamic> json) =>
    _$ReturnModelImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      orderList: (json['order_list'] as List<dynamic>?)
          ?.map((e) => OrderList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReturnModelImplToJson(_$ReturnModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'order_list': instance.orderList,
    };

_$OrderListImpl _$$OrderListImplFromJson(Map<String, dynamic> json) =>
    _$OrderListImpl(
      orderId: json['order_id'] as String?,
      orderUniqueId: json['order_unique_id'] as String?,
      dealerId: json['dealer_id'] as String?,
      dealerName: json['dealer_name'] as String?,
      catId: json['cat_id'],
      product: json['product'],
      productId: json['product_id'] as String?,
      quantity: json['quantity'],
      modeOfPay: json['mode_of_pay'] as String?,
      amount: json['amount'] as String?,
      paidAmount: json['paid_amount'] as String?,
      transferId: json['transfer_id'] as String?,
      creditDays: json['credit_days'],
      meDealerId: json['me_dealer_id'] as String?,
      creditAmount: json['credit_amount'] as String?,
      orderStatus: json['order_status'] as String?,
      payStatus: json['pay_status'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      orderCreated: json['order_created'] as String?,
      userType: json['user_type'] as String?,
      invoicePath: json['invoice_path'] as String?,
      dispatchImg: json['dispatch_img'] as String?,
      dispatchImg2: json['dispatch_img2'] as String?,
      balanceCredit: json['balance_credit'],
      retrunReason: json['retrun_reason'] as String?,
      deliveredDate: json['delivered_date'] as String?,
      retrunStatus: json['retrun_status'] as String?,
      orderCount: json['order_count'] as String?,
    );

Map<String, dynamic> _$$OrderListImplToJson(_$OrderListImpl instance) =>
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
      'paid_amount': instance.paidAmount,
      'transfer_id': instance.transferId,
      'credit_days': instance.creditDays,
      'me_dealer_id': instance.meDealerId,
      'credit_amount': instance.creditAmount,
      'order_status': instance.orderStatus,
      'pay_status': instance.payStatus,
      'date': instance.date,
      'time': instance.time,
      'order_created': instance.orderCreated,
      'user_type': instance.userType,
      'invoice_path': instance.invoicePath,
      'dispatch_img': instance.dispatchImg,
      'dispatch_img2': instance.dispatchImg2,
      'balance_credit': instance.balanceCredit,
      'retrun_reason': instance.retrunReason,
      'delivered_date': instance.deliveredDate,
      'retrun_status': instance.retrunStatus,
      'order_count': instance.orderCount,
    };
