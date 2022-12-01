import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget(this._title, {super.key});
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/flutter_logo.png"),
            ),
            SizedBox(
              width: 200,
              height: 100,
              child: Image.asset(
                "assets/images/flutter_logo.png",
                width: 50,
                height: 50,
                fit: BoxFit.scaleDown,
              ),
            ),
            Image.asset(
              "assets/images/flutter_logo.png",
              width: 100,
              height: 100,
              color: Colors.red,
              colorBlendMode: BlendMode.lighten,
            ),
          ],
        ),
      ),
    );
  }
}
