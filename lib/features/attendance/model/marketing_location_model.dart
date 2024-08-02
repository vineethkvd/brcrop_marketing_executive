class MarketingLocationModel {
  double? latitude;
  double? longitude;

  MarketingLocationModel({this.latitude, this.longitude});

  Map<String, dynamic> toJson() => {
    'latitude': latitude,
    'longitude': longitude,
  };

  factory MarketingLocationModel.fromJson(Map<String, dynamic> json) {
    return MarketingLocationModel(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
