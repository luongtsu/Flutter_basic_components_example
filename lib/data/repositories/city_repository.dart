import 'dart:convert';
import '../data_providers/city_name_provider.dart';
import '../models/city.dart';

class CityRepository {
  final CityNameProvider cityNameProvider = CityNameProvider();

  Future<List<City>> getCityList(String country) async {
    final jsonRawData = await cityNameProvider.getCityJson();
    final json = jsonDecode(jsonRawData) ;
    final List<City> cities = (json as List)
        .map((e) => City.fromJson(e))
        .where((element) => element.country == country)
        .toList();
    return cities;
  }
}
