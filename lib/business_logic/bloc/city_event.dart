part of 'city_bloc.dart';

@immutable
abstract class CityEvent {}

class CityRequest extends CityEvent {
  final String country;

  CityRequest({required this.country});
}