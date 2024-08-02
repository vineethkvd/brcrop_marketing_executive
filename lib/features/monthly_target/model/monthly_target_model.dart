class MonthlyTargetModel {
  bool? status;
  String? message;
  String? monthTarget;

  MonthlyTargetModel({this.status, this.message, this.monthTarget});

  MonthlyTargetModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    monthTarget = json['month_target'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['month_target'] = this.monthTarget;
    return data;
  }
}
