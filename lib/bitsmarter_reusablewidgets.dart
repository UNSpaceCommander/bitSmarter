import 'package:flutter/material.dart';

class BitSmarter_ReusableWidgets {
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

  static Widget getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          AppBar(
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Container(
              padding: EdgeInsets.only(bottom: 8),
              margin: EdgeInsets.only(
                right: 12,
                top: 10,
                bottom: 10,
              ),
              child: new Image.asset('images/logo.png'),
            ),
          ),
          ListTile(
              leading: Icon(Icons.playlist_add),
              title: Text('Submit a Service Request'),
              onTap: () {
                Navigator.pushNamed(context, '/servicerequest');
              }),
          ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Frequently Awnsered Questions'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              }),
          Container(
            height: 1.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Services'),
              onTap: () {
                Navigator.pushNamed(context, '/services');
              }),
          ListTile(
              leading: Icon(Icons.people),
              title: Text('People'),
              onTap: () {
                Navigator.pushNamed(context, '/people');
              }),
          ListTile(
              leading: Icon(Icons.store),
              title: Text('Company'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              }),
          Container(
            height: 1.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          ListTile(
              leading: Icon(Icons.group_work),
              title: Text('Employee Portal'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              }),
          ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Join Our Team'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              }),
          Container(
            height: 1.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              }),
        ],
      ),
    );
  }

 

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
