import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap"),
      ),
      body: ListView(
        children: [
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
                label: const Text('Hamilton'),
              ),
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
                label: const Text('Lafayette'),
              ),
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
                label: const Text('Mulligan'),
              ),
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JL')),
                label: const Text('Laurens'),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                color: Colors.orange,
                width: 100,
                height: 500,
              ),
              Expanded(
                child:  Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 8.0, // gap between adjacent chips
                  runSpacing: 4.0, // gap between lines
                  children: <Widget>[
                    Chip(
                      avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
                      label: const Text('Hamilton'),
                    ),
                    Chip(
                      avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
                      label: const Text('Lafayette'),
                    ),
                    Chip(
                      avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('HM')),
                      label: const Text('Mulligan'),
                    ),
                    Chip(
                      avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('JL')),
                      label: const Text('Laurens'),
                    ),
                    Chip(
                      avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('RZ')),
                      label: const Text('Razer'),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
