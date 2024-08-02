import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: 'status') @Default('') String? status,
    @JsonKey(name: 'message') @Default('') String? message,
    @JsonKey(name: 'order_list') @Default([]) List<OrderLIst>? orderList,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class OrderLIst with _$OrderLIst {
  const factory OrderLIst({
    @JsonKey(name: 'order_id') @Default('') String? orderId,
    @JsonKey(name: 'order_unique_id') @Default('') String? orderUniqueId,
    @JsonKey(name: 'dealer_id') @Default('') String? dealerId,
    @JsonKey(name: 'dealer_name') @Default('') String? dealerName,
    @JsonKey(name: 'cat_id') @Default('') String? catId,
    @JsonKey(name: 'product') @Default('') String? product,
    @JsonKey(name: 'product_id') @Default('') String? productId,
    @JsonKey(name: 'quantity') @Default('') String? quantity,
    @JsonKey(name: 'mode_of_pay') @Default('') String? modeOfPay,
    @JsonKey(name: 'amount') @Default('') String? amount,
    @JsonKey(name: 'credit_days') @Default('') String? creditDays,
    @JsonKey(name: 'me_dealer_id') @Default('') String? meDealerId,
    @JsonKey(name: 'credit_amount') @Default('') String? creditAmount,
    @JsonKey(name: 'order_status') @Default('') String? orderStatus,
    @JsonKey(name: 'pay_status') @Default('') String? payStatus,
    @JsonKey(name: 'date') @Default('') String? date,
    @JsonKey(name: 'dispatch_img') @Default('') String? dispatchImg,
    @JsonKey(name: 'dispatch_img2') @Default('') String? dispatchImgTwo,
    @JsonKey(name: 'time') @Default('') String? time,
    @JsonKey(name: 'order_created') @Default('') String? orderCreated,
    @JsonKey(name: 'user_type') @Default('') String? userType,
    @JsonKey(name: 'invoice_path') @Default('') String? invoicePath,
    @JsonKey(name: 'order_count') @Default('') String? orderCount,
  }) = _OrderLIst;

  factory OrderLIst.fromJson(Map<String, dynamic> json) =>
      _$OrderLIstFromJson(json);
}
