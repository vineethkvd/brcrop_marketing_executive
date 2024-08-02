class PolicyModel {
  String? policy;

  PolicyModel({this.policy});

  PolicyModel.fromJson(Map<String, dynamic> json) {
    policy = json['policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['policy'] = this.policy;
    return data;
  }
}
