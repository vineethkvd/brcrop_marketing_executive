class NotificationModel {
  String? status;
  String? message;
  List<Data>? data;

  NotificationModel({this.status, this.message, this.data});

  NotificationModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? meNotifiId;
  String? msgForUser;
  String? meNotifiTime;

  Data({this.meNotifiId, this.msgForUser, this.meNotifiTime});

  Data.fromJson(Map<String, dynamic> json) {
    meNotifiId = json['me_notifi_id'];
    msgForUser = json['msg_for_user'];
    meNotifiTime = json['me_notifi_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['me_notifi_id'] = this.meNotifiId;
    data['msg_for_user'] = this.msgForUser;
    data['me_notifi_time'] = this.meNotifiTime;
    return data;
  }
}
