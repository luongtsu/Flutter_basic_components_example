import 'package:flutter/material.dart';

class TextButtonComponent extends StatelessWidget {
  const TextButtonComponent(this._title, {Key? key}) : super(key: key);
  final String _title;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Here are TextButton:"),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: null,
                  child: const Text("Disabled Button")
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text("Enabled Button")
              ),
              const SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: const Text('Button with foreground'),
              ),
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                      child: const Text('Gradient background'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Home()
            ]
        ),
      ),
    );
  }
}


class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
    required this.selected,
    this.style,
    required this.onPressed,
    required this.child,
  });

  final bool selected;
  final ButtonStyle? style;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  late final MaterialStatesController statesController;

  @override
  void initState() {
    super.initState();
    statesController = MaterialStatesController(
        <MaterialState>{if (widget.selected) MaterialState.selected});
  }

  @override
  void didUpdateWidget(SelectableButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selected != oldWidget.selected) {
      statesController.update(MaterialState.selected, widget.selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      statesController: statesController,
      style: widget.style,
      onPressed: widget.onPressed,
      child: widget.child,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectableButton(
        selected: selected,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.white;
              }
              return null; // defer to the defaults
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.indigo;
              }
              return null; // defer to the defaults
            },
          ),
        ),
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        child: const Text('toggle selected'),
      ),
    );
  }
}
