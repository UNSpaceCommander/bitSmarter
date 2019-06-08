import 'package:flutter/material.dart';


class NameTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _NameTextField();
  }
}

class _NameTextField extends State<NameTextField> {
String _name;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }
      },
      onSaved: (String value) {
        setState(() {
          _name = value;
        });
      },
      maxLines: 1,
      decoration: InputDecoration(labelText: 'Name'),
    );
  }
}
