 import 'package:flutter/material.dart';
 import '../services.dart';
 import '../tier1/create_circular_Image.dart';





 Widget createCircularImageColumn(
      BuildContext context, String image, String text, int buttonValue) {
    return FlatButton(
      child: Column(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          Container(
            margin: EdgeInsets.only(
                  bottom: 10.0, top: 7.5),
            child: createCircularImage(context, image),
          ),
        ],
      ),
      onPressed: () {
        final MyModel model = ModelBinding.of<MyModel>(context);
        ModelBinding.update<MyModel>(context, MyModel(value: buttonValue));
      },
    );
  }
