import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_model.freezed.dart';
part 'return_model.g.dart';

@freezed
class ReturnModel with _$ReturnModel {
  const factory ReturnModel({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "order_list") List<OrderList>? orderList,
  }) = _ReturnModel;

  factory ReturnModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnModelFromJson(json);
}

@freezed
class OrderList with _$OrderList {
  const factory OrderList({
    @JsonKey(name: "order_id") String? orderId,
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
    @JsonKey(name: "order_count") String? orderCount,
  }) = _OrderList;

  factory OrderList.fromJson(Map<String, dynamic> json) =>
      _$OrderListFromJson(json);
}
