//contains the stateless and stateful widget
import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';
//import 'MyMuseumApp_widget.dart'; - > error: need to add this to the yaml
import 'Exhibits.dart';

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
    print(
        'state created inside the createState() method for the MyMuseumApp class.');

    return _MyMuseumAppState();
  }
}

///////////////////////////////////////////////////
class _MyMuseumAppState extends State<MyMuseumApp> {
//INSTANCE PROPERTIES
//--------------------

  int _currentIndex = 0; //Tracks bottomNavigationBar selection

//List of exhibits that are stored in the app. Should be initialized to only hold 1 exhibit from TMORA.
//List <Exhibits> galleryExhibits[];
//final List<Widget> _children = [];
//_galleryExhibits[_currentIndex], //goes into body of scaffold
//final List<Widget> _galleryExhibits = [];  ///////////////////////1 of 2 line errors////////////////////////////////////////
  final List<Exhibits> _galleryExhibits = [
    //This is my placeholder for the Body of Soviet Art exhibit that appears by default when user clicks button.
    //It should also show up by default when a user selects the Exhibits navigation button (index = 1).
    Exhibits(Colors.deepOrange),
  ];

  @override
  Widget build(BuildContext context) {
    // Build whatever here - camera widget, homepage, something

    //MaterialApp allows us to add a navigator. It wraps our entire project.
    //Scaffold has a white background and allows us to add an appBar

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text('MyMuseumApp',
              style: TextStyle(fontSize: 30, color: Colors.grey[400])),
          //backgroundColor: Colors.green[300]
          //backgroundColor: Colors.brown[600]
          backgroundColor: Colors.grey[900]),
      //backgroundColor: Colors.green[100],
      //backgroundColor: Colors.brown[100],

      backgroundColor: Colors.grey[500],
      body: Column(
        //An array/List of generic type's <Widget>
        children: <Widget>[
          Card(
            //child: Image.asset('assets/images/museumInterior.png', width: 20.0),
            child: new Image.asset("images/museumInterior.png"),
          ),

          // SizedBox(
          //           child: Text("Put some kinda graphic thing right here....."),
          //           width: double.infinity,
          //           height: 200,
          //           //backgroundColor: Colors.amber,
          //           //shape: BoxShape.circle
          //         ),

          Container(
            color: Colors.grey[900],
            width: double.infinity,
            /*margin: EdgeInsets.all(10.0),*/
            height: 200.0,
            padding: EdgeInsets.all(5.0),
            child: Row(
              children: [
                Text("  Link to TMORA website",
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
                        print(
                            'Button was clicked. to visit website or gallery exhibit or something.');
                        //setState();
                        /////////////////2 of 2 line errors///////////////////////////////////////////////////////////////
                        //This setStae() doesn't execute. This should actually go through the setState function and set state = index = 1
                        setState(() {
                          _currentIndex =
                              1; //go to empty list of exhibits that only holds one default exhibit
                          print(
                              'set state after button pressed. Current index is $_currentIndex');
                          print(' MyMuseumAppState() = $_MyMuseumAppState() ');
                        });

                        //This button currently does nothing....
                        //Basically just navigates to the Body of Soviet Art Exhibit within the Exhibit List.
                        //GO TO 1st exhibit inside the list.
                      }, //end onPressed() method
                      //What is the onPressed button methd supposed to do?
                      //It should take the user to the defaul art exibit that is initiazlied inside the
                      //List of exbihits - Body of Soviet Art, maybe.

                      child: Image.asset("images/TMORA.png"),
                      color: Colors
                          .black, //This makes a frame around the exhibit button that looks like a picture frame. I like.
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
      ), //column was here

      //_galleryExhibits[_currentIndex], //goes into body of scaffold for nav control
      //Navigathion bar at bottom of screen

      //body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, //Good
        fixedColor: Colors.green,
        iconSize: 30,

        //onTap: onTap(),
        //currentIndex: _currentIndex,

        //Note: u must have 2 items here
        items: [
          BottomNavigationBarItem(
            title: Text("Login"),
            icon: Icon(Icons.home),
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            title: Text("Exhibits"),
            icon: Icon(Icons.collections),
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            title: Text("Add Exhibit"),
            icon: Icon(Icons.add_box),
            backgroundColor: Colors.green,
          ),
        ], //end of Items list

        /*   onTap: (index) {
          //executes when user taps bottomNavigationBar
          //This method triggers the build() method to re-runwith the state passed into it. Changes the body of our scaffold widget & animates the navigation bar to the correct tab.
          //This is a method of the BottomNavigationBar.
          print('BottomNavigationBar Item was tapped. index =$index');

          setState(() {
            _currentIndex = index;
            print(
                'setState() for the BottomNavigationBar was called. index =$index');
            if (index == 1) {
              // ignore: unnecessary_statements
              _galleryExhibits[0];
            }
          });
        }, */ //end onTap(index),
      ),

      //rremoved list line that was causing the error from here........

      // )
    ));
  } //end of build method

/*  onTap(int index) {
//executes when user taps bottomNavigationBar
//This method triggers the build() method to re-runwith the state passed into it. Changes the body of our scaffold widget & animates the navigation bar to the correct tab.
//This is a method of the BottomNavigationBar.
    print('BottomNavigationBar Item was tapped. index =$index');

    setState(() {
      _currentIndex = index;

      print('setState() for the BottomNavigationBar was called. index =$index');
    }); //end setState
  } //end onTap(index)
*/
//void setState(Null Function() param0) {}

} // end of class _MyMuseumAppState extends State
///////////////////////////////////////////////////

//void setState(Null Function() param0) {}
class MyBottomNavigationBar extends StatefulWidget {
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentNavBarIndex = 0;
  //_currentIndex = _MyMuseumAppState();

  final List<Widget> _children = [
    //New pages generated by bottom nav bar go here
  ];

  onTap(int index) {
//executes when user taps bottomNavigationBar
//This method triggers the build() method to re-runwith the state passed into it. Changes the body of our scaffold widget & animates the navigation bar to the correct tab.
//This is a method of the BottomNavigationBar.
    print('BottomNavigationBar Item was tapped. index =$index');

    setState(() {
      //_MyMuseumAppState.createState();
      //MyMuseumAppState._currentIndex = index;

      print('setState() for the BottomNavigationBar was called. index =$index');
    }); //end setState
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  } //end onTap(index)
}
