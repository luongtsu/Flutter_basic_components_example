import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox"),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(height: 10, width: 10, color: Colors.greenAccent,),
            fittedBoxContain(),
            Container(height: 10, width: 10, color: Colors.greenAccent,),
            fittedBoxCover(),
            Container(height: 10, width: 10, color: Colors.greenAccent,),
            fittedBoxFill(),
            Container(height: 10, width: 10, color: Colors.greenAccent,),
            fittedBoxFitWidth(),
            Container(height: 10, width: 10, color: Colors.greenAccent,),
            fittedBoxFitHeight(),
            Container(height: 10, width: 10, color: Colors.greenAccent,),
            fittedBoxScaleDown(),
            Container(height: 10, width: 10, color: Colors.greenAccent,),
            fittedBoxNone(),
          ],
        ),
      ),
    );
  }

  Widget fittedBoxContain() {
    return Container(
      color: Colors.grey,
      height: 200,
      width: 300,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Container(
          alignment: Alignment.center,
          height: 150,
          width: 250,
          color: Colors.pinkAccent,
          child: const Text(
            "With FittedBox contain",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget fittedBoxCover() {
    return Container(
      color: Colors.grey,
      height: 200,
      width: 200,
      child: FittedBox(
        fit: BoxFit.cover,
        clipBehavior: Clip.hardEdge,
        child: Container(
          alignment: Alignment.center,
          height: 150,
          width: 150,
          color: Colors.orange,
          child: const Text(
            "With FittedBox Cover",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget fittedBoxFill() {
    return Container(
      color: Colors.grey,
      height: 200,
      width: 300,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Container(
          alignment: Alignment.center,
          height: 150,
          width: 150,
          color: Colors.pinkAccent,
          child: const Text(
            "With FittedBox Fill",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget fittedBoxFitWidth() {
    return Container(
      color: Colors.grey,
      height: 200,
      width: 300,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        clipBehavior: Clip.hardEdge,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          color: Colors.orange,
          child: const Text(
            "FitWidth",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget fittedBoxFitHeight() {
    return Container(
      color: Colors.grey,
      height: 200,
      width: 300,
      child: FittedBox(
        fit: BoxFit.fitHeight,
        clipBehavior: Clip.hardEdge,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          color: Colors.pinkAccent,
          child: const Text(
            "fitHeight",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget fittedBoxScaleDown() {
    return Container(
      color: Colors.grey,
      height: 200,
      width: 200,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Container(
          alignment: Alignment.center,
          height: 250,
          width: 350,
          color: Colors.pinkAccent,
          child: const Text(
            "With FittedBox ScaleDown",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget fittedBoxNone() {
    return Container(
      color: Colors.grey,
      height: 200,
      width: 200,
      child: FittedBox(
        fit: BoxFit.none,
        child: Container(
          alignment: Alignment.center,
          height: 150,
          width: 250,
          color: Colors.pinkAccent,
          child: const Text(
            "With FittedBox None",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
