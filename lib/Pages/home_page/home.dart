import 'package:flutter/material.dart';
import '../../tier2widgets/bs_default_appbar.dart';
import '../../tier2widgets/bs_drawer_builder.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppbar.getAppBar(context),
      drawer: BuildDrawer.getDrawer(context),
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
