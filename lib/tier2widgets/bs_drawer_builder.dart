  import 'package:flutter/material.dart';

class BuildDrawer {

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
}