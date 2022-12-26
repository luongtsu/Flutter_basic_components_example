import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/bloc/weather_bloc.dart';

class WeatherApp extends StatelessWidget {
  final _cityController = TextEditingController();

  WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        WeatherBloc()..add(WeatherRequest(cityName: "Ha Noi")),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Weather App"),
          centerTitle: true,
        ),
        body: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state is WeatherLoadInprogress) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Loading"),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is WeatherLoadInprogress) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is WeatherLoadFailure) {
              return const Center(
                child: Text("Something went wrong"),
              );
            } else if (state is WeatherLoadSuccess) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      controller: _cityController,
                      decoration: const InputDecoration(
                        hintText: "Enter city name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/sun.png",
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          state.weather.name,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          state.weather.main["temp"].toString(),
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_cityController.text.isNotEmpty) {
                          context.read<WeatherBloc>().add(
                            WeatherRequest(
                              cityName: _cityController.text,
                            ),
                          );
                        }
                      },
                      child: const Text("Get Weather"),
                    )
                  ],
                ),
              );
            } else
              return Container();
          },
        ),
      ),
    );
  }
}
