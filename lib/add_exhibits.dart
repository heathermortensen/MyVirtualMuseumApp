import 'package:flutter/material.dart';

// ignore: camel_case_types
class add_exhibits extends StatelessWidget {
  //An exhibit will be a list of painting objects
  //Each paining will have a photo of the paining and a photo or text input of the painting details card.

  //List of paintings to display
  //Photo asssociated with the museum/exhibit title with show details/location

  @override
  build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightGreen[200],
      appBar: new AppBar(
        title: new Text('Add a new exhibit'),
      ),
      body: new Center(
        child: new Text('Textfields here for user input',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
