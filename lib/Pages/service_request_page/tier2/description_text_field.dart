import 'package:flutter/material.dart';


class DescriptionTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _DescriptionTextField();
  }
}

class _DescriptionTextField extends State<DescriptionTextField> {
String _description;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (String value) {
        setState(() {
          _description = value;
        });
      },
      maxLines: 4,
      decoration: InputDecoration(labelText: 'Description'),
    );
  }
}
