import 'package:basic_components_demo/basic_components/bottom_app_bar.dart';
import 'package:basic_components_demo/basic_components/container_widget.dart';
import 'package:basic_components_demo/basic_components/expanded_widget.dart';
import 'package:basic_components_demo/basic_components/fitted_box.dart';
import 'package:basic_components_demo/basic_components/hero_transition_widget.dart';
import 'package:basic_components_demo/basic_components/stack_and_positioned.dart';
import 'package:basic_components_demo/basic_components/wrap_widget.dart';
import 'package:basic_components_demo/presentation/screens/cities.dart';
import 'package:basic_components_demo/presentation/screens/weather_app.dart';
import 'package:flutter/material.dart';
import 'basic_components/align_widget.dart';
import 'basic_components/dart_async_example.dart';
import 'basic_components/listview_widget.dart';
import 'basic_components/password_field_widget.dart';
import 'basic_components/scaffold_widget.dart';
import 'basic_components/text_widget.dart';
import 'basic_components/floating_action_button_widget.dart';
import 'basic_components/image_widget.dart';
import 'basic_components/text_button_widget.dart';
import 'basic_components/textfield_widget.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        ScreenName.home: (context) => const MyComponents(),
        ScreenName.text: (context) => const TextComponent("Text"),
        ScreenName.textButton: (context) => const TextButtonComponent("TextButton"),
        ScreenName.image: (context) => const ImageWidget("Image"),
        ScreenName.floatingActionButton: (context) => const FloatingActionButtonWidget("FloatingActionButton"),
        ScreenName.scaffold: (context) => const ScaffoldWidget("Scaffold"),
        ScreenName.textField: (context) => const TextFieldWidget("TextField"),
        ScreenName.passwordField: (context) => const PasswordTextField("PasswordField"),
        ScreenName.container: (context) => const ContainerWidget("Container"),
        ScreenName.align: (context) => const AlignWidget("Align"),
        ScreenName.expanded: (context) => const ExpandedWidget(),
        ScreenName.hero: (context) => const HeroMainScreen(),
        ScreenName.bottomAppBar: (context) => const BottomAppBarWidget(),
        ScreenName.loadLocalFile: (context) => const CityList(),
        ScreenName.loadWeather: (context) => WeatherApp(),
        ScreenName.fittedBox: (context) => const FittedBoxWidget(),
        ScreenName.positioned: (context) => const StackAndPositioned(),
        ScreenName.listView: (context) => const ListViewWidget(),
        ScreenName.wrap: (context) => const WrapWidget(),
      },
    );
  }
}

class ScreenName {
  static const home = "/";
  static const text = "/text";
  static const textButton = "/textButton";
  static const image = "/image";
  static const floatingActionButton = "/floatingActionButton";
  static const scaffold = "/scaffold";
  static const textField = "/textField";
  static const passwordField = "/passwordField";
  static const container = "/container";
  static const align = "/align";
  static const expanded = "/expanded";
  static const fittedBox = "/fittedBox";
  static const hero = "/hero";
  static const bottomAppBar = "/bottomAppBar";
  static const loadLocalFile = "/loadLocalFile";
  static const loadWeather = "/loadWeather";
  static const positioned = "/positioned";
  static const listView = "/listView";
  static const wrap = "/wrap";
}

class MyComponents extends StatelessWidget {
  const MyComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widget Components"),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: <Widget>[
              Center(
                child: DartAsyncExample(),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.text);
                },
                child: Text("Text", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.textButton);
                },
                child: Text("TextButton", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.image);
                },
                child: Text("Image", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.floatingActionButton);
                },
                child: Text("FloatingActionButton", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.scaffold);
                },
                child: Text("Scaffold", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.textField);
                },
                child: Text("TextField", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.passwordField);
                },
                child: Text("PasswordField", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.container);
                },
                child: Text("Container", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.align);
                },
                child: Text("Align", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.positioned);
                },
                child: Text("Stack & Positioned", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.expanded);
                },
                child: Text("Expanded, Row, Column, Spacer", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.wrap);
                },
                child: Text("Wrap", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.fittedBox);
                },
                child: Text("FittedBox", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.bottomAppBar);
                },
                child: Text("BottomAppBar", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.loadLocalFile);
                },
                child: Text("Load local file", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.loadWeather);
                },
                child: Text("Load Weather", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.listView);
                },
                child: Text("ListView", textAlign: TextAlign.left),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) {
                      return const HeroMainScreen();
                    },
                  ));
                },
                child: Text("Hero Transition", textAlign: TextAlign.left),
              ),
            ],
          ),
        ),
    );
  }
}

