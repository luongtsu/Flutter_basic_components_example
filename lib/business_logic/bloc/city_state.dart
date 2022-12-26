part of 'city_bloc.dart';

@immutable
abstract class CityState {}

class CityInitial extends CityState {}

class CityLoadInprogress extends CityState {}

class CityLoadSuccess extends CityState {
  final List<City> cities;
  CityLoadSuccess({required this.cities});
}

class CityLoadFailure extends CityState {
  final String error;
  CityLoadFailure({required this.error});
}
