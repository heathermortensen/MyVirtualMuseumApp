//contains the stateless and stateful widget
import 'package:flutter/material.dart';

main()
{
  //Start rendering the user interface here by rendering a widget
  runApp(MyMuseumApp());

}
class MyMuseumApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    // Build whatever here - camera widget, homepage, something
 
      
     
    
    
    //MaterialApp allows us to add a navigator. It wraps our entire project.
    //Scaffold has a white background and allows us to add an appBar
    return MaterialApp(home: Scaffold(
                                appBar: AppBar(title: Text('MyMuseumApp', 
                                                style: TextStyle(fontSize: 30)), 
                                                backgroundColor: Colors.green[300]
                                              ),
                       backgroundColor: Colors.green[100],
                       body: Center(child: Text("Write something here",
                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 30.0,
                                                                )
                                               )
                                   )
                                     )
                       );
  }

}

