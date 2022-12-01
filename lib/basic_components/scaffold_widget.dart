import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget(this._title, {super.key});
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(child: Text('Scaffold have appBar + body, floatingButton, bottonBar, ...')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
