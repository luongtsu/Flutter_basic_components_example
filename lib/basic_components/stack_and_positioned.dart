import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack & Positioned"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 400,
          color: Colors.grey,
          child: Stack(
            children: [
              Container(
                width: 400,
                height: 100,
                color: Colors.orange,
                child: Text("Container"),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  child: Text("Bottom-Right: 10"),
                  ),
              ),
              Positioned(
                top: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Text("Top: 50"),
                ),
              ),
                Positioned(
                  top: 50,
                  right: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.cyan,
                    child: Text("Top: 10, Right: 50"),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
