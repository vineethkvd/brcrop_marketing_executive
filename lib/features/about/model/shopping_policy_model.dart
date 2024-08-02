class ShoppingPolicyModel {
  String? shippingPolicy;

  ShoppingPolicyModel({this.shippingPolicy});

  ShoppingPolicyModel.fromJson(Map<String, dynamic> json) {
    shippingPolicy = json['shipping_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shipping_policy'] = this.shippingPolicy;
    return data;
  }
}
