import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(this._title, {Key? key}) : super(key: key);
  final String _title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              child: Text("Container1"),
              width: 50,
              height: 50,
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              child: Text("Container2"),
              padding: EdgeInsets.all(16),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              child: Text("Container3"),
              alignment: Alignment.center,
              width: 200,
              height: 100,
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              child: Text("Container4"),
              alignment: Alignment.center,
              constraints: BoxConstraints.tightForFinite( height: 50),
            ),
            SizedBox(height: 10,),
            Container(
              child: Text("Container5"),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              padding: EdgeInsets.all(40),
            ),
            SizedBox(height: 10,),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.1),
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
