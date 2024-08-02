class CartModel {
  bool? status;
  String? message;
  List<Data>? data;
  int? totalAmount;

  CartModel({this.status, this.message, this.data, this.totalAmount});

  CartModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    totalAmount = json['total_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total_amount'] = this.totalAmount;
    return data;
  }
}

class Data {
  String? cartId;
  Null? orderId;
  String? dealerId;
  String? productId;
  String? verId;
  String? quantity;
  String? price;
  String? date;
  String? schemeStatus;
  String? userType;
  String? status;
  String? productName;
  String? proImg1;
  String? categoryId;
  String? proPrice;
  String? proPackingSize;

  Data(
      {this.cartId,
        this.orderId,
        this.dealerId,
        this.productId,
        this.verId,
        this.quantity,
        this.price,
        this.date,
        this.schemeStatus,
        this.userType,
        this.status,
        this.productName,
        this.proImg1,
        this.categoryId,
        this.proPrice,
        this.proPackingSize});

  Data.fromJson(Map<String, dynamic> json) {
    cartId = json['cart_id'];
    orderId = json['order_id'];
    dealerId = json['dealer_id'];
    productId = json['product_id'];
    verId = json['ver_id'];
    quantity = json['quantity'];
    price = json['price'];
    date = json['date'];
    schemeStatus = json['scheme_status'];
    userType = json['user_type'];
    status = json['status'];
    productName = json['product_name'];
    proImg1 = json['pro_img1'];
    categoryId = json['category_id'];
    proPrice = json['pro_price'];
    proPackingSize = json['pro_packing_size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_id'] = this.cartId;
    data['order_id'] = this.orderId;
    data['dealer_id'] = this.dealerId;
    data['product_id'] = this.productId;
    data['ver_id'] = this.verId;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['date'] = this.date;
    data['scheme_status'] = this.schemeStatus;
    data['user_type'] = this.userType;
    data['status'] = this.status;
    data['product_name'] = this.productName;
    data['pro_img1'] = this.proImg1;
    data['category_id'] = this.categoryId;
    data['pro_price'] = this.proPrice;
    data['pro_packing_size'] = this.proPackingSize;
    return data;
  }
}
