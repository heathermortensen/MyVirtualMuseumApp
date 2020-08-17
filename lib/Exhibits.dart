import 'package:flutter/material.dart';

class Exhibits extends StatelessWidget {
  final Color color;

  Exhibits(this.color);

  @override
  build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Exhibits'),
      ),
      body: new Center(
        child: new Text('Exhibits are displayed here'),
      ),
    );
  }
}
