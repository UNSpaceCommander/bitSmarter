import 'package:flutter/material.dart';
import '../Pages/services.dart';

class SPtier1 {
  static Widget servicesContainer(BuildContext context, Color color) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28.0), topRight: Radius.circular(28.0)),
          color: Color(0xFFC25B56),
        ),
        height: MediaQuery.of(context).size.height * .8,
      ),
    );
  }

  static Widget createCircularImage(BuildContext context, String image) {
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

  static Widget createCircularImageColumn(
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
}
