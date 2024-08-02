class PaymentModel {
  bool? status;
  String? message;
  String? tranId;
  String? successLink;
  String? failedLink;
  String? dealerName;
  int? limit;

  PaymentModel(
      {this.status,
        this.message,
        this.tranId,
        this.successLink,
        this.failedLink,
        this.dealerName,
        this.limit});

  PaymentModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    tranId = json['tran_id'];
    successLink = json['success_link'];
    failedLink = json['failed_link'];
    dealerName = json['dealer_name'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['tran_id'] = this.tranId;
    data['success_link'] = this.successLink;
    data['failed_link'] = this.failedLink;
    data['dealer_name'] = this.dealerName;
    data['limit'] = this.limit;
    return data;
  }
}
