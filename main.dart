import 'package:flutter/material.dart';
import './Pages/home.dart';
import './Pages/search.dart';
import './Pages/profile.dart';
import './Pages/service_request_page.dart';
import './Pages/ourteam.dart';
import './Pages/services.dart';
import './Pages/stackexample.dart';
import './Pages/serviceRequestPage/tier1.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainState();
  }
}

class _MainState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'roboto',
          brightness: Brightness.light,
          scaffoldBackgroundColor: Color(0xFFBEB9B5),
          primaryColor: Color(0xFFFEF6EB),
          accentColor: Color(0xFF525564),
          backgroundColor: Color(0xFFFEF6EB),
          //Color(0xFF96C0CE) light blue
          //Color(0xFFBEB9B5) dark grey
          //Color(0xFFC25B56) red
          //Color(0xFFFEF6EB) light tan
          //Color(0xFF525564) dark blue
          //Color(0xFF74828F) med grey blue
      ),
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/search': (BuildContext context) => SearchPage(),
        '/profile': (BuildContext context) => ProfilePage(),
        '/servicerequest': (BuildContext context) => ServiceRequestPage(),
        '/people': (BuildContext context) => OurTeamPage(),
        '/services': (BuildContext context) => ModelBinding<MyModel>(
        initialModel: const MyModel(),
        child: Services(),
          ),
      },
    );
  }
}
