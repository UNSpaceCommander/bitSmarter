import 'package:flutter/material.dart';


class CreateInfoCard{

Widget createInfoCard(BuildContext context, String imageKey, String textKey) {
  return Card(
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFBEB9B5)),
          color: Theme.of(context).accentColor),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5.0),
                  topRight: Radius.circular(5.0)),
              color: Color(0xFF74828F),
            ),
            height: 80.0,
            width: 80.0,
            child: Image(
              image: AssetImage(imageKey),
            ),
            padding: EdgeInsets.all(5.0),
          ),
          Flexible(
            child: Container(
              child: RichText(
                text: TextSpan(
                    text: textKey,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'roboto')),
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.clip,
                textScaleFactor: 1.0,
              ),
              margin: EdgeInsets.all(5.0),
            ),
          )
        ],
      ),
    ),
  );
}
}