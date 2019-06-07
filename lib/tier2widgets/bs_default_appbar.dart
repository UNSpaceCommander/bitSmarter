import 'package:flutter/material.dart';

class DefaultAppbar {



  static Widget getAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
      title: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: Container(
          padding: EdgeInsets.only(bottom: 8),
          margin: EdgeInsets.only(
            right: 12,
            top: 10,
            bottom: 10,
          ),
          child: new Image.asset('images/logo.png'),
        ),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            }),
        IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            }),
      ],
    );
  }
}