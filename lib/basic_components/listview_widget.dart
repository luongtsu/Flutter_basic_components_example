import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});
  static const String _title = "ListView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_title)),
      body: Center(
        child: ListViewSeparated(),
      ),
    );
  }
}

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(child: Text('Entry C')),
          ),
        ],
      ),
    );
  }
}

final List<String> entries = <String>['A', 'B', 'C', 'D', "E"];
final List<int> colorCodes = <int>[600, 500, 100, 80, 50];

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          }
      ),
    );
  }
}

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
        separatorBuilder: (BuildContext context, int index)  => const Divider(),
      ),
    );
  }
}