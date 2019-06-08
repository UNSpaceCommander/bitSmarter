import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('bitSmarter'),
      ),
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