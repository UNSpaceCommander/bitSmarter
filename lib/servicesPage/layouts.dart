import 'package:flutter/material.dart';
import './tier2.dart';
import './tier1.dart';
import '../Pages/services.dart';

class Layouts {

}
Widget layoutToDisplay(BuildContext context){
  final int model = ModelBinding.of<MyModel>(context).value; 
print(model);
if(model==1){
  return layoutTV(context);
}
else if(model==2){
  return layout1(context);
}
else if(model==3){
  return layout1(context);
}
else if(model==4){
  return layout1(context);
}
else{
  return layout1(context);
}
}

Widget testing123(BuildContext context){
  return Center(
        child: RaisedButton(
      onPressed: () {
        final MyModel model = ModelBinding.of<MyModel>(context);
        ModelBinding.update<MyModel>(context, MyModel(value: model.value + 1));
      },
      child: Text('Hello World ${ModelBinding.of<MyModel>(context).value}'),
    )
      );
}


  Widget layout1(BuildContext context) {
    print('you loaded layout 1');
    return Container(
      child: Stack(
        children: <Widget>[
          //ServicesContainer(context, 0xFFC25B56),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.0),
                    topRight: Radius.circular(28.0)),
                color: Theme.of(context).accentColor,
              ),
              height: MediaQuery.of(context).size.height * .8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                  child: ListView(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 15.0),
                          alignment: Alignment.center,
                          child: Text(
                            'Services',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      SPtier2.layout1ServiceCard(context, 'images/TV.png', 'TV',
                          '- Install - Set Up - Connect to Wifi -', 1),
                      SizedBox(height: 15.0),
                      SPtier2.layout1ServiceCard(
                          context,
                          'images/computer.png',
                          'Computer',
                          '- Set Up - Remove Viruses - Improve Speed', 2),
                      SizedBox(height: 15.0),
                      SPtier2.layout1ServiceCard(
                          context,
                          'images/phone.png',
                          'Phone',
                          '- Transfer Data - Activate - Switch Carriers', 3),
                      SizedBox(height: 15.0),
                      SPtier2.layout1ServiceCard(context, 'images/wifi.png',
                          'Internet', '- Install - Configure -', 4),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget layoutTV(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          SPtier1.servicesContainer(context, Color(0xFFC25B56)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.0),
                  topRight: Radius.circular(28.0),
                ),
                color: Theme.of(context).accentColor,
              ),
              height: 142.0,
              child: SPtier2.createImageRow(
                  context,
                  'images/computer.png',
                  'Computer',
                  'images/phone.png',
                  'Phone',
                  'images/wifi.png',
                  'Wifi'),
            ),
          ),
        ],
      ),
    );
  }


