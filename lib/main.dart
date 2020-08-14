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
                       body: 
                                Column(
                                        children:<Widget>[
                       
                                                            Text("Write something here",
                                                                  style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 30.0,
                                                                                  )
                                                                ),
                                                            Text("Write something here"),

                                                            Text("Write something here",
                                                                  style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 30.0,
                                                                                  )
                                                                ),

                                          ], // children <Widgets>
                                        //) 
                                    ),
                       bottomNavigationBar: BottomNavigationBar(
                                                                currentIndex: 0,
                                                                fixedColor: Colors.green,
                                                                //Note: u must have 2 items here
                                                                items: [
                                                                   BottomNavigationBarItem(
                                                                                          title: Text("Exhibits"),
                                                                                          icon: Icon(Icons.collections)
                                                                                          ),
                                                                  BottomNavigationBarItem(
                                                                                          title: Text("Add Exhibit"),
                                                                                          icon: Icon(Icons.add_box)
                                                                                          ),
                                                                        ]
                                                                ,onTap: (int index){
                                                                  setState((){
                                                                       // _currentIndex=index;                                                            _currentIndex = index;
                                                                              });
                                                                                   },
                                                    
                                      ),
                                                                  
                                                                                                                                            
                                                                                                      
                       ));
                                                                                        
                                                                    }
                                                                  
                                                                    void setState(Null Function() param0) {}

}

