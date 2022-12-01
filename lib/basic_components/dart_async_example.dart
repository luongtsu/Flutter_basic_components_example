import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DartAsyncExample extends StatefulWidget {
  const DartAsyncExample({Key? key}) : super(key: key);

  @override
  State<DartAsyncExample> createState() => _DartAsyncExampleState();
}

class _DartAsyncExampleState extends State<DartAsyncExample> {

  Future<int> _counterValue() {
    return Future<int>.delayed(const Duration(seconds: 2), () {
     return 2;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: FutureBuilder<int>(
        future: _counterValue(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Text("Counter: ${snapshot.data}");
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
