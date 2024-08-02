class TermsModel {
  String? terms;

  TermsModel({this.terms});

  TermsModel.fromJson(Map<String, dynamic> json) {
    terms = json['terms'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['terms'] = this.terms;
    return data;
  }
}
