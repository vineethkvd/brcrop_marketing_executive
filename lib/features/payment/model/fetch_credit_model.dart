class FetchCreditLimitModel {
  String? status;
  String? message;
  int? creditLimit;

  FetchCreditLimitModel({this.status, this.message, this.creditLimit});

  FetchCreditLimitModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    creditLimit = json['credit_limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['credit_limit'] = this.creditLimit;
    return data;
  }
}
