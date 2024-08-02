class DealerContactModel {
  String? contactUs;

  DealerContactModel({this.contactUs});

  DealerContactModel.fromJson(Map<String, dynamic> json) {
    contactUs = json['contact_us'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact_us'] = this.contactUs;
    return data;
  }
}
