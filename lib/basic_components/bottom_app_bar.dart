import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          width: double.infinity,
          child: Text('Index $_selectedIndex', textAlign: TextAlign.center,),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Text("Page $_selectedIndex"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: smthing
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,//icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center
      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color: Colors.blueAccent,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 0, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () { _onItemTapped(0);},
              child: const TabItemWithText("Home", Icons.home),
            ),
            InkWell(
              onTap: () { _onItemTapped(1);},
              child: const TabItemWithText("Calendar", Icons.calendar_month),
            ),
            SizedBox(width: 60,),
            InkWell(
              onTap: () { _onItemTapped(2);},
              child: const TabItemWithText("Focuse", Icons.access_time_outlined),
            ),
            InkWell(
              onTap: () { _onItemTapped(3);},
              child: const TabItemWithText("Profile", Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}

class TabItemWithText extends StatelessWidget {
  const TabItemWithText(this._title, this._iconData, {Key? key}) : super(key: key);

  final String _title;
  final IconData _iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          child: Icon(_iconData, color: Colors.white,),
        ),
        Text(_title, style: const TextStyle(fontSize: 12, color: Colors.white),),
      ],
    );
  }
}
