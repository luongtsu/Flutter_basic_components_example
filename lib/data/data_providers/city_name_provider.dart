import 'package:flutter/services.dart' show rootBundle;

class CityNameProvider {
  static const String fileName = "assets/files/city.list.json";

  Future<String> getCityJson() async {
    var jsonString = await rootBundle.loadString(fileName);
    return jsonString;
  }
}