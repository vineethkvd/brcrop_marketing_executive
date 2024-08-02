class CategoryModel {
  bool? status;
  String? message;
  List<Data>? data;

  CategoryModel({this.status, this.message, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
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
  String? catId;
  String? categoryName;
  String? catImg;
  String? catStatus;

  Data({this.catId, this.categoryName, this.catImg, this.catStatus});

  Data.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    categoryName = json['category_name'];
    catImg = json['cat_img'];
    catStatus = json['cat_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cat_id'] = this.catId;
    data['category_name'] = this.categoryName;
    data['cat_img'] = this.catImg;
    data['cat_status'] = this.catStatus;
    return data;
  }
}
