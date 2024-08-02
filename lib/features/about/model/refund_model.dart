class RefundModel {
  String? refundPolicy;

  RefundModel({this.refundPolicy});

  RefundModel.fromJson(Map<String, dynamic> json) {
    refundPolicy = json['refund_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['refund_policy'] = this.refundPolicy;
    return data;
  }
}