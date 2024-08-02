class PayOnlineModel {
  bool? status;
  String? message;
  String? tranId;
  String? successLink;
  String? failedLink;
  String? qrImage;

  PayOnlineModel(
      {this.status,
        this.message,
        this.tranId,
        this.successLink,
        this.failedLink,
        this.qrImage});

  PayOnlineModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    tranId = json['tran_id'];
    successLink = json['success_link'];
    failedLink = json['failed_link'];
    qrImage = json['qr_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['tran_id'] = this.tranId;
    data['success_link'] = this.successLink;
    data['failed_link'] = this.failedLink;
    data['qr_image'] = this.qrImage;
    return data;
  }
}
