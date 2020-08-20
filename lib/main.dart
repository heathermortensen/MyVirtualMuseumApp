//contains the stateless and stateful widget
import 'package:flutter/material.dart';
import 'package:second_app_Heather/Exhibits.dart';
import 'package:second_app_Heather/Home_widget.dart';
//import 'package:second_app_Heather/Exhibits.dart';
import 'package:second_app_Heather/bottom_nav_widget.dart';

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

// //I just added these to get rid of errors

//What is RootTab?
  // RootTab get rootTab => this.rootTab;
  //RootTab get _currentTab => this.rootTab; //Tracks bottomNavigationBar selection
  //RootTab rootTab = this.rootTab;

  //This method passes in this.tootTab and sets _currentTab qual to it

//Callback method when the user clicks on it.
  void _didSelectTab(RootTab rootTab) {
    setState(() {
      _currentTab = rootTab;

      print('-----------------------------------------------------------');
      print('MyMuseumApp State: ');
      print('rootTab= $rootTab should return the following: ');
      print('_didSelectTab = $_didSelectTab should return the following: ');
      print('_currenttTab = $_currentTab');
      print('///////////////////////////////////////////////////////////// ');
    });
  }

//List of exhibits that are stored in the app. Should be initialized to only hold 1 exhibit from TMORA.
//List <Exhibits> galleryExhibits[];
//final List<Widget> _children = [];
//_galleryExhibits[_currentIndex], //goes into body of scaffold
//final List<Widget> _galleryExhibits = [];  ///////////////////////1 of 2 line errors////////////////////////////////////////

  // ////////////////////Yet Unused. Throwing errors////////////////////
  // final List<Exhibits> _galleryExhibits = [

  //   //This is my placeholder for the Body of Soviet Art exhibit that appears by default when user clicks button.
  //   //It should also show up by default when a user selects the Exhibits navigation button (index = 1).
  //   Exhibits(Colors.deepOrange),
  // ];

  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    var body;

    // logic to get the body to be displayed
    switch (_currentTab) {
      case RootTab.exhibits:
        body = Exhibits();
        break;
      // case RootTab.add_exhibits:
      //   body = AddExhibits();
      //   break;
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
