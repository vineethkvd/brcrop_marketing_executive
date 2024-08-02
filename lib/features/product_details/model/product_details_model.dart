class ProductDetailModel {
  bool? status;
  String? message;
  List<Data>? data;

  ProductDetailModel({this.status, this.message, this.data});

  ProductDetailModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? proId;
  String? proUniqueId;
  String? categoryId;
  String? productName;
  String? proImg1;
  String? description;
  String? proPrice;
  Null? proPacking;
  Null? proPackingSize;
  String? creditDays;
  String? createDt;
  String? updateDt;
  String? proStatus;

  Data(
      {this.proId,
        this.proUniqueId,
        this.categoryId,
        this.productName,
        this.proImg1,
        this.description,
        this.proPrice,
        this.proPacking,
        this.proPackingSize,
        this.creditDays,
        this.createDt,
        this.updateDt,
        this.proStatus});

  Data.fromJson(Map<String, dynamic> json) {
    proId = json['pro_id'];
    proUniqueId = json['pro_unique_id'];
    categoryId = json['category_id'];
    productName = json['product_name'];
    proImg1 = json['pro_img1'];
    description = json['description'];
    proPrice = json['pro_price'];
    proPacking = json['pro_packing'];
    proPackingSize = json['pro_packing_size'];
    creditDays = json['credit_days'];
    createDt = json['create_dt'];
    updateDt = json['update_dt'];
    proStatus = json['pro_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pro_id'] = this.proId;
    data['pro_unique_id'] = this.proUniqueId;
    data['category_id'] = this.categoryId;
    data['product_name'] = this.productName;
    data['pro_img1'] = this.proImg1;
    data['description'] = this.description;
    data['pro_price'] = this.proPrice;
    data['pro_packing'] = this.proPacking;
    data['pro_packing_size'] = this.proPackingSize;
    data['credit_days'] = this.creditDays;
    data['create_dt'] = this.createDt;
    data['update_dt'] = this.updateDt;
    data['pro_status'] = this.proStatus;
    return data;
  }
}
