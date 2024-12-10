class LocationModel {
  final String name;
  final String region;
  final String country;

  LocationModel({
    required this.name,
    required this.country,
    required this.region,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      name: json["name"],
      country: json["country"],
      region: json["region"],
    );
  }
}
