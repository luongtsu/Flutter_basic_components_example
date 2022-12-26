import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../business_logic/bloc/city_bloc.dart';
class CityList extends StatelessWidget {
  const CityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CityBloc()..add(CityRequest(country: "VN")),
      child: Scaffold(
        appBar: AppBar(title: Text("City List"),),
        body: BlocConsumer<CityBloc, CityState> (
            listener: (context, state) {
              if (state is CityLoadInprogress) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Loading city"),
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state is CityLoadInprogress)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else if (state is CityLoadFailure)
                return Center(
                  child: Text("Something went wrong"),
                );
              else if (state is CityLoadSuccess) {
                return ListView.separated(
                  itemCount: state.cities.length,
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('City:  ${state.cities[index].name}'),
                    );
                  },
                );
              } else
                return Container();
            }
        ),
      ),
    );
  }
}
