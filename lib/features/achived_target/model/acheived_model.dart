class AchievedTargetModel {
  String? status;
  String? message;
  String? achievedCount;

  AchievedTargetModel({this.status, this.message, this.achievedCount});

  AchievedTargetModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    achievedCount = json['achieved_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['achieved_count'] = this.achievedCount;
    return data;
  }
}
