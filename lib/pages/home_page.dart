import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 80, left: 15),
          child: Text('IOS Development'),
        ),
      ),
      appBar: AppBar(
        title: Text('RadCode'),
      ),
      body: Center(
          child: Column(
        children: [Text('List Item 1')],
      )),
    );
  }
}
