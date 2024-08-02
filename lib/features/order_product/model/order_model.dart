// class OrderProductsModel {
//   String? status;
//   String? message;
//   List<OrderList>? orderList;
//
//   OrderProductsModel({this.status, this.message, this.orderList});
//
//   OrderProductsModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     if (json['order_list'] != null) {
//       orderList = <OrderList>[];
//       json['order_list'].forEach((v) {
//         orderList!.add(new OrderList.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['message'] = this.message;
//     if (this.orderList != null) {
//       data['order_list'] = this.orderList!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class OrderList {
//   String? orderId;
//   String? orderUniqueId;
//   String? dealerId;
//   String? dealerName;
//   String? catId;
//   String? product;
//   String? productId;
//   String? quantity;
//   String? modeOfPay;
//   String? amount;
//   String? creditDays;
//   String? creditAmount;
//   String? orderStatus;
//   String? payStatus;
//   String? date;
//   String? time;
//   String? orderCreated;
//   String? orderCount;
//
//   OrderList(
//       {this.orderId,
//         this.orderUniqueId,
//         this.dealerId,
//         this.dealerName,
//         this.catId,
//         this.product,
//         this.productId,
//         this.quantity,
//         this.modeOfPay,
//         this.amount,
//         this.creditDays,
//         this.creditAmount,
//         this.orderStatus,
//         this.payStatus,
//         this.date,
//         this.time,
//         this.orderCreated,
//         this.orderCount});
//
//   OrderList.fromJson(Map<String, dynamic> json) {
//     orderId = json['order_id'];
//     orderUniqueId = json['order_unique_id'];
//     dealerId = json['dealer_id'];
//     dealerName = json['dealer_name'];
//     catId = json['cat_id'];
//     product = json['product'];
//     productId = json['product_id'];
//     quantity = json['quantity'];
//     modeOfPay = json['mode_of_pay'];
//     amount = json['amount'];
//     creditDays = json['credit_days'];
//     creditAmount = json['credit_amount'];
//     orderStatus = json['order_status'];
//     payStatus = json['pay_status'];
//     date = json['date'];
//     time = json['time'];
//     orderCreated = json['order_created'];
//     orderCount = json['order_count'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['order_id'] = this.orderId;
//     data['order_unique_id'] = this.orderUniqueId;
//     data['dealer_id'] = this.dealerId;
//     data['dealer_name'] = this.dealerName;
//     data['cat_id'] = this.catId;
//     data['product'] = this.product;
//     data['product_id'] = this.productId;
//     data['quantity'] = this.quantity;
//     data['mode_of_pay'] = this.modeOfPay;
//     data['amount'] = this.amount;
//     data['credit_days'] = this.creditDays;
//     data['credit_amount'] = this.creditAmount;
//     data['order_status'] = this.orderStatus;
//     data['pay_status'] = this.payStatus;
//     data['date'] = this.date;
//     data['time'] = this.time;
//     data['order_created'] = this.orderCreated;
//     data['order_count'] = this.orderCount;
//     return data;
//   }
// }
