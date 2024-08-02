class CancelPolicyModel {
  String? cancelPolicy;

  CancelPolicyModel({this.cancelPolicy});

  CancelPolicyModel.fromJson(Map<String, dynamic> json) {
    cancelPolicy = json['cancel_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cancel_policy'] = this.cancelPolicy;
    return data;
  }
}
