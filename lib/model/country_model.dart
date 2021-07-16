/// country : "AD"
/// name : "Sant Julià de Lòria"
/// lat : "42.46372"
/// lng : "1.49129"

class CountryModel {
  String? country;
  String? name;
  String? lat;
  String? lng;

  CountryModel({
      this.country, 
      this.name, 
      this.lat, 
      this.lng});

  CountryModel.fromJson(dynamic json) {
  try{
    country = json["country"].toString();
    name = json["name"].toString();
    lat = json["lat"].toString();
    lng = json["lng"].toString();
  }catch(e){}
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["country"] = country;
    map["name"] = name;
    map["lat"] = lat;
    map["lng"] = lng;
    return map;
  }

}