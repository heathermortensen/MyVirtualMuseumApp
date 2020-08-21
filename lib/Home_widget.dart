import 'dart:ui';

import 'package:flutter/material.dart';

//Because I click a button that returns something, this must be stateful. Otherwise, it could be stateless.
// ignore: camel_case_types
class HomeWidget extends StatelessWidget {
//MaterialApp allows us to add a navigator. It wraps our entire project.
  //Scaffold has a white background and allows us to add an appBar
  //@override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Image.asset("images/museumInterior.png"),

          // ),
        ),
        Container(
          color: Colors.grey[900],
          width: double.infinity,
          /*margin: EdgeInsets.all(10.0),*/
          height: 200.0,
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: [
              Text(" Link to TMORA website",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[200])),

              //Raised button with TMORA icon. It has an anonymous function onPressed(arguments){function body}
              Container(
                  width: 150.0,
                  height: 150.0,
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () {
                      //anonymous function. It I wanted it to execute immediatley, I woud add () after the {}
                      // print(
                      //     'Print() inside Home_widget.dart: Button was clicked to visit gallery exhibit. S_currentTab is $currentTab');

                      //Note: This whole darn widget can be Stateless, except for this stupid button, which I need.
                      //There are ways around needing to implement State here. See video "Flutter State Managment - The Grand Tour" at
                      //fireship.io/lessons/flutter-state-management-guide/

                      //We can use a map or a list to get around this. But, since that list isn't implement yet, I will hold off on this buttons functionality.
                      // setState(() {
                      //   //display the Exhibits page, initialized to hold one Exhibit with 3 paintings in it.
                      //   print('Print() inside Home_widget.dart: _curentTab should be set to equal 1.');
                      // });
                      print(
                          '===================================================');
                      print(
                          'Button clicked to display a default museum exhibit.');
                      print(
                          '===================================================');
                    }, //end onPressed() method

                    child: Image.asset("images/TMORA.png"),
                    color: Colors
                        .brown, //This makes a frame around the exhibit button that looks like a picture frame. I like.
                  )), //Container
            ], //children of Row
          ),
        ),
        Text("Make something here...maybe user id/authentication",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            )),
      ], // children <Widgets>
      //)
    );
  }
}
