import 'package:flutter/material.dart';
import '../tier1/get_formated_time.dart';

youSelected(TimeOfDay time) {
  return Container(
    margin: EdgeInsets.only(left: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Selected Time:',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          getFormatedTime(time),
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
