import 'package:flutter/material.dart';

Widget createCircularImage(BuildContext context, String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        color: Color(0xFF96C0CE),
      ),
      height: 100.0,
      width: 100.0,
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(image),
      ),
      padding: EdgeInsets.all(5.0),
    );
  }