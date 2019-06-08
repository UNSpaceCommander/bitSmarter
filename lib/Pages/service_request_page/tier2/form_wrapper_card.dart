import 'package:flutter/material.dart';

wrapForm(BuildContext context, Widget formWidg) {
  return Container(
    height: MediaQuery.of(context).size.height * 2.0,
    child: ListView(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(28.0),
              ),
              color: Theme.of(context).accentColor,
            ),
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.only(left: 50.0, right: 50, top: 20.0),
            child: formWidg),
      ],
    ),
  );
}
