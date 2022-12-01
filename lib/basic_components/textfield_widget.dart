import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(this._title, {super.key});
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                labelText: 'Password',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border:  InputBorder.none,
                hintText: "Hint",
                //labelText: 'Password',
                suffixIcon: Icon(Icons.person),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.visibility_off),
                  border:  InputBorder.none,
                  hintText: "Hint",
                  //labelText: 'Password',
                  suffixIcon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            PasswordFieldWidget(),
          ],
        ),
      ),
    );
  }
}

class EditableTextField extends StatefulWidget {
  const EditableTextField({Key? key}) : super(key: key);

  @override
  State<EditableTextField> createState() => _EditableTextFieldState();
}

class _EditableTextFieldState extends State<EditableTextField> {
  final tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class PasswordFieldWidget extends StatefulWidget {
  const PasswordFieldWidget({Key? key}) : super(key: key);

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _obscured = false;
  String _inputText = "";

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscured,
      decoration: InputDecoration(
        border:  OutlineInputBorder(),
        hintText: "Hint",
        //labelText: _inputText,
        prefixIcon: Icon(Icons.person),
        suffixIcon: GestureDetector(
          onTap: _toggleObscured,
          child: Icon(_obscured ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}

