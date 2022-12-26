import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/city.dart';
import '../../data/repositories/city_repository.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  CityBloc() : super(CityInitial());
  CityRepository _cityRepository = CityRepository();

  @override
  Stream<CityState> mapEventToState(CityEvent event) async* {
    if (event is CityRequest) {
      yield CityLoadInprogress();

      try {
        final cities = await _cityRepository.getCityList(event.country);
        yield CityLoadSuccess(cities: cities);
      } catch (e) {
        print(e);
        yield CityLoadFailure(error: e.toString());
      }
    }
  }
}
