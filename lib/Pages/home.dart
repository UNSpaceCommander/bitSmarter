import 'package:flutter/material.dart';
import '../bitsmarter_reusablewidgets.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BitSmarter_ReusableWidgets.getDrawer(context),
      appBar: BitSmarter_ReusableWidgets.getAppBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'howdy',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
    );
  }
}
