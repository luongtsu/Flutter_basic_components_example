import 'dart:ffi';

import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expanded"),),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 300,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.cyan,
                      height: 300,
                      child: const FittedBox(
                        fit: BoxFit.contain,
                        child: Text("Flex 1"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.red,
                      child: const FittedBox(
                        fit: BoxFit.fill,
                        child: Text("Flex 1"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      child: const FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text("Flex 2 2 2 2 2"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              height: 100,
              width: 300,
              child: Row(
                children: [
                  Container(
                    color: Colors.red,
                    width: 50,
                  ),
                  const Spacer(flex: 1,),
                  Container(
                    color: Colors.blue,
                    width: 50,
                  ),
                  const Spacer(flex: 2,),
                  Container(
                    color: Colors.green,
                    width: 50,
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
