import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: ListView(
        children: [
          Text("MediaQueryData = ${mediaQueryData}"),
          Text("MediaQueryData.size = ${mediaQueryData.size}"),
          Text("MediaQueryData.devicePixelRatio = ${mediaQueryData.devicePixelRatio}"),
          Text("MediaQueryData.textScaleFactor = ${mediaQueryData.textScaleFactor}"),
          Text("MediaQueryData.viewInsets = ${mediaQueryData.viewInsets}"),
          Text("MediaQueryData.padding = ${mediaQueryData.padding}"),
        ],
      ),
    );
  }
}
