import 'package:flutter/material.dart';
import './create_circle_image_column.dart';

Widget createImageRow(BuildContext context, String image1,
      String text1, String image2, String text2, String image3, String text3) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          createCircularImageColumn(context, image1, text1, 2),
          createCircularImageColumn(context, image2, text2, 3),
          createCircularImageColumn(context, image3, text3, 4),
        ],
      ),
    );
  }
