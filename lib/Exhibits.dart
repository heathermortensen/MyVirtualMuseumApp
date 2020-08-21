import 'package:flutter/material.dart';

class Exhibits extends StatelessWidget {
  //An exhibit will be a list of painting objects
  //Each paining will have a photo of the paining and a photo or text input of the painting details card.

  //List of paintings to display
  //Photo asssociated with the museum/exhibit title with show details/location

  @override
  build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: new AppBar(
        title: new Text('Exhibits'),
      ),
      body: new Center(
        child: new Text('Exhibits are displayed here',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
