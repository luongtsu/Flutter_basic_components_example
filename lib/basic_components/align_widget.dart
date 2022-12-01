import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget(this._title, {Key? key}) : super(key: key);
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
            Text("Container:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Container(
              color: Colors.blue,
              width: 300,
              height: 100,
              child: Align(
                alignment: Alignment(-0.5, 0.5),
                child: Text("Alignment(-0.5, 0.5)"),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              width: 300,
              height: 100,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text("centerRight"),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              width: 300,
              height: 100,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text("bottomLeft"),
              ),
            ),
            SizedBox(height: 10,),
            Text("Stack:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment(-0.5, 0.5),
                    child: Text("Alignment(-0.5, 0.5)"),
                  ),
                  Align(
                    alignment: Alignment(1, -0.7),
                    child: Text("Alignment(1, -0.7)"),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("center"),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("bottomLeft"),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("centerRight"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
