// To parse this JSON data, do
//
//     final countryModel = countryModelFromJson(jsonString);

import 'dart:convert';

class CountryModel {
  CountryModel({
    this.country,
    this.name,
    this.lat,
    this.lng,
  });

  String? country;
  String? name;
  String? lat;
  String? lng;

  factory CountryModel.fromRawJson(String str) => CountryModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
    country: json["country"],
    name: json["name"],
    lat: json["lat"],
    lng: json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "name": name,
    "lat": lat,
    "lng": lng,
  };
}
