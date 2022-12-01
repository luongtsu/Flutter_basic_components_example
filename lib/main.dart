import 'package:basic_components_demo/basic_components/container_widget.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:
      Scaffold(
        appBar: AppBar(
          title: Text("Widget Components"),
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Center(
              child: DartAsyncExample(),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const TextComponent("Text");
                  },
                ));
              },
              child: Text("Text", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const TextButtonComponent("TextButton");
                  },
                ));
              },
              child: Text("TextButton", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const ImageWidget("Image");
                  },
                ));
              },
              child: Text("Image", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const FloatingActionButtonWidget("FloatingActionButton");
                  },
                ));
              },
              child: Text("FloatingActionButton", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const ScaffoldWidget("Scaffold");
                  },
                ));
              },
              child: Text("Scaffold", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const TextFieldWidget("TextField");
                  },
                ));
              },
              child: Text("TextField", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const PasswordTextField("PasswordField");
                  },
                ));
              },
              child: Text("PasswordField", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const ContainerWidget("Container");
                  },
                ));
              },
              child: Text("Container", textAlign: TextAlign.left),
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return const AlignWidget("Align");
                  },
                ));
              },
              child: Text("Align", textAlign: TextAlign.left),
            ),
            Divider(),
          ],
        )
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}