import 'package:flutter/material.dart';


Widget createTextField(BuildContext context, Widget inputBox) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFC25B56)),
            color: Theme.of(context).primaryColor),
        margin: EdgeInsets.symmetric(vertical: 2.5),
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: inputBox);
  }