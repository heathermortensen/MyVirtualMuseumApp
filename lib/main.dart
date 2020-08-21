import 'package:flutter/material.dart';
import 'package:second_app_Heather/Exhibits.dart';
import 'package:second_app_Heather/Home_widget.dart';
import 'package:second_app_Heather/bottom_nav_widget.dart';

import 'Add_Exhibits.dart';

//import 'Home_widget.dart';

////////////////
main() {
  //Start rendering the user interface here by rendering a widget
  runApp(MyMuseumApp());
}

///////////////////////////////////////////
/////NOTE: I should have named this MyApp to make it work with the test file
///NOTE: I also should have built the project differently in cmd to work with Swift code.
//////////////////////////////////////////
class MyMuseumApp extends StatefulWidget {
  @override
  _MyMuseumAppState createState() {
    print('MyMuseumAppState createdState() inside MyMuseumApp class.');

    return _MyMuseumAppState();
  }
}

///////////////////////////////////////////////////
class _MyMuseumAppState extends State<MyMuseumApp> {
  var _currentTab = RootTab.home;

//INSTANCE vars that control state
//--------------------------------

//Callback method when the user clicks on it.
  void _didSelectTab(RootTab rootTab) {
    setState(() {
      _currentTab = rootTab;

      print('-----------------------------------------------------------');
      print('bottomNavigationBar named MyBottomNavigationBar was clicked.');
      print('MyMuseumApp State: _currenttTab = $_currentTab');
      print('///////////////////////////////////////////////////////////// ');
    });
  }

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    var body;

    // logic to get the body to be displayed
    switch (_currentTab) {
      case RootTab.exhibits:
        body = Exhibits();
        break;
      case RootTab.add_exhibits:
        body = add_exhibits();
        break;
      default:
        body = HomeWidget();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'MyMuseumApp',
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey[400],
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),

        backgroundColor: Colors.grey[500],
        body: body, //add Bottom navigational control bar
        bottomNavigationBar: MyBottomNavigationBar(
          //Allows you to actually select a different tab
          currentTab: _currentTab,
          onTabSelected: _didSelectTab,
        ),
      ),
    );
  } // end of class _MyMuseumAppState extends State
///////////////////////////////////////////////////
}
