import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/weather.dart';
import '../../data/repositories/weather_repository.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final _weatherRepository = WeatherRepository();
  WeatherBloc() : super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is WeatherRequest) {
      yield WeatherLoadInprogress();

      try {
        final weatherResponse =
            await _weatherRepository.getWeather(event.cityName);
            //await _weatherRepository.getWeatherCurrentLocation();
        yield WeatherLoadSuccess(weather: weatherResponse);
      } catch (e) {
        print(e);
        yield WeatherLoadFailure(error: e.toString());
      }
    }
  }
}
