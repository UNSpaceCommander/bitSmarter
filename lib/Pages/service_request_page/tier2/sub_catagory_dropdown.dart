import 'package:flutter/material.dart';
import './form_input_container.dart';
import '../service_request_page.dart';

class CreateSubCatagoryDropDownBox extends StatefulWidget {
  final List<String> options;

  CreateSubCatagoryDropDownBox(this.options);
  @override
  State<StatefulWidget> createState() {

    return _CreateSubCatagoryDropDownBox();
  }
}

class _CreateSubCatagoryDropDownBox
    extends State<CreateSubCatagoryDropDownBox> {
  String _subCatagory;

  build(BuildContext context) {
    if (widget.options == null) {
      return Container(
        child: Text('AHHHH'),
      );
    }
    if (widget.options.length > 3) {
      return createTextField(
        context,
        Container(
          alignment: Alignment.centerLeft,
          child: DropdownButton<String>(
            value: _subCatagory,
            hint: Text('Select Catagory'),
            onChanged: (String newValue) {
              setState(() {
                _subCatagory = newValue;
              });
            },
            items: <String>[
              widget.options[0],
              widget.options[1],
              widget.options[2],
              widget.options[3]
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      );
    } else {
      return createTextField(
        context,
        Container(
          alignment: Alignment.centerLeft,
          child: DropdownButton<String>(
            value: _subCatagory,
            hint: Text('Select Catagory'),
            onChanged: (String newValue) {
              setState(() {
                _subCatagory = newValue;
              });
            },
            items: <String>[
              widget.options[0],
              widget.options[1],
              widget.options[2]
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
          ),
        ),
      );
    }

  }
}
