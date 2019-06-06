import 'package:flutter/material.dart';
import './tier1.dart';
import '../Pages/services.dart';


class SPtier2 {
  static Widget createImageRow(BuildContext context, String image1,
      String text1, String image2, String text2, String image3, String text3) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SPtier1.createCircularImageColumn(context, image1, text1, 2),
          SPtier1.createCircularImageColumn(context, image2, text2, 3),
          SPtier1.createCircularImageColumn(context, image3, text3, 4),
        ],
      ),
    );
  }



  static Widget layout1ServiceCard(BuildContext context, String imageKey,
      String textKey, String textDescriptionKey, int buttonValue) {
    return FlatButton(child: Container(
        child: Row(
          children: <Widget>[
            Container(
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
                backgroundImage: AssetImage(imageKey),
              ),
              padding: EdgeInsets.all(5.0),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: RichText(
                    text: TextSpan(
                      text: textKey,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    textAlign: TextAlign.left,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    textScaleFactor: 1.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: RichText(
                    text: TextSpan(
                      text: textDescriptionKey,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: 'roboto',
                      ),
                    ),
                    textAlign: TextAlign.left,
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    textScaleFactor: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
    ),
     onPressed: () {
      final MyModel model = ModelBinding.of<MyModel>(context);
        ModelBinding.update<MyModel>(context, MyModel(value: buttonValue));
        },
        );
        
  }
}
