class ExpenceNameModel {
  String? status;
  String? message;
  List<Data>? data;

  ExpenceNameModel({this.status, this.message, this.data});

  ExpenceNameModel.fromJson(Map<String, dynamic> json) {
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
  String? expId;
  String? expName;

  Data({this.expId, this.expName});

  Data.fromJson(Map<String, dynamic> json) {
    expId = json['exp_id'];
    expName = json['exp_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exp_id'] = this.expId;
    data['exp_name'] = this.expName;
    return data;
  }
}
