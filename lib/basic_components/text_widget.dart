import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent(this._title, {super.key});
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
          children: <Widget>[
            const Text(
              'Hello world! How are you?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Text.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SelectionArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Selectable text'),
                  SelectionContainer.disabled(child: Text('Non-selectable text')),
                  Text('Selectable text'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
