class WriteUpEditModel {
  String? status;
  String? message;
  List<Data>? data;

  WriteUpEditModel({this.status, this.message, this.data});

  WriteUpEditModel.fromJson(Map<String, dynamic> json) {
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
  String? writeupId;
  String? meId;
  String? writeup;
  String? creatDt;
  String? updateDt;

  Data({this.writeupId, this.meId, this.writeup, this.creatDt, this.updateDt});

  Data.fromJson(Map<String, dynamic> json) {
    writeupId = json['writeup_id'];
    meId = json['me_id'];
    writeup = json['writeup'];
    creatDt = json['creat_dt'];
    updateDt = json['update_dt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['writeup_id'] = this.writeupId;
    data['me_id'] = this.meId;
    data['writeup'] = this.writeup;
    data['creat_dt'] = this.creatDt;
    data['update_dt'] = this.updateDt;
    return data;
  }
}
