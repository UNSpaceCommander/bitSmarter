import 'package:flutter/material.dart';
import './selected_date_text.dart';

class SelectDate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SelectDate();
  }
}

class _SelectDate extends State<SelectDate> {
  DateTime _dateTime = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(2018),
        lastDate: DateTime(2101));
    if (picked != null && picked != _dateTime) {
      setState(() {
        _dateTime = picked;
      });
    }
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(0.0, 1.0),
                  )
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: Color(0xFF96C0CE),
              ),
              child: Icon(Icons.date_range),
            ),
            onTap: () => selectDate(context),
          ),
          youSelected(_dateTime)
        ],
      ),
    );
  }
}
