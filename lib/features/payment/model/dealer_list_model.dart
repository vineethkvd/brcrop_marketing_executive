class DealerListModel {
  String? status;
  String? message;
  List<Dealers>? dealers;

  DealerListModel({this.status, this.message, this.dealers});

  DealerListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['Dealers'] != null) {
      dealers = <Dealers>[];
      json['Dealers'].forEach((v) {
        dealers!.add(new Dealers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.dealers != null) {
      data['Dealers'] = this.dealers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dealers {
  String? dealerId;
  String? dName;

  Dealers({this.dealerId, this.dName});

  Dealers.fromJson(Map<String, dynamic> json) {
    dealerId = json['dealer_id'];
    dName = json['d_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dealer_id'] = this.dealerId;
    data['d_name'] = this.dName;
    return data;
  }
}
