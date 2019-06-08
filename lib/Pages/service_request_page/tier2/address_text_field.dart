import 'package:flutter/material.dart';


class AddressTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _AddressTextField();
  }
}

class _AddressTextField extends State<AddressTextField> {
String _address;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Meeting location address is required';
        }
      },
      onSaved: (String value) {
        setState(() {
          _address = value;
        });
      },
      maxLines: 1,
      decoration: InputDecoration(labelText: 'Meeting Location Address'),
    );
  }
}
