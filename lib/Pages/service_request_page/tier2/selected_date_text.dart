import 'package:flutter/material.dart';
import '../tier1/get_formated_date.dart';

youSelected(DateTime dateTime) {
  return Container(
    margin: EdgeInsets.only(left: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Selected Date:',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          getFormatedDate(dateTime),
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
