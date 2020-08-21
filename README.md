# MyVirtualMuseumApp
MyVirtualMuseumApp helps a visitor photograph and document a museum exhibit so that others can participate virtually. 
This project's purpose is to farmiliarize me with Flutter, its state patterns, and its various widgets and functionality.

Artworks displayed in a gallery exhibit always have an informational plauque. It displays artist name, title of the piece, date created, and medium. I call it 'Information' in the code.

Artworks are conventially documented as pictured, with: 1.) A photo of the entire work; 2.) A close up of an area of interest (known as a Detail photo); 3.) A summary of information about the work (title of the piece, artist name, medium, and date of creation); and 4.) A written description of the work prepared by the curator. These items are referred to in the code as Photo, Detail, Information, and Description. (See figure 1)

![AGuyFromTheUrals](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/AManFromTheUrals.png)

**Figure 1.** Conventional documentation of a piece of art

A database is not the most appropriate implementation to store art pieces within this app. A List that that changes size dynamically would provide flexibility for a user to take as many photos of an art piece as they wanted. However, since I want to familiarize myself with Flutter's database implementation methods, I might implement the following DB. The DB holds 4 photos to correspond with the art piece data pictured in figure 1.

![MyVirtualExhibitAppFirstScreenSketch](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/databaseImage2.png) 

**Figure 2.** Sketch of a database to hold paintings shown in an exhibit

To do
------------------------
- [  ] Where can I apply Block pattern to control state? (Maybe need some other state patterns for other things, like the button). 
- [  ] Draw a picture of all the different local and global states so I can see how state patterns might operate in unison.
- [  ] Make a new branch on Git so that I can revert back when I break this thing again.
- [  ] Investigate yaml file to learn why 2nd image has never displayed.
- [  ] Look at maps and tile widgets. Can I hold all the exhibit images in a map at the top level? This might make state simpler.
- [  ] Start looking at how to access camera function.

MyVirtualExhibitApp
------------------------
![MyVirtualExhibitApp](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/WidgetTreeApp.png)


Exhibit
------------------------
![Exhibit](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/WidgetTreeExhibit.png)

Painting
------------------------

![Painint](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/WidgetTreePainting.png)

![Painting](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/PaintingWidgetLifecycle.png)

It could also hold the Body of Soviet Art Exhibit that I really liked.
Or, the Exhibit on Owls because Elena really likes owls and they just had that speaker who was a grad student at the U of MN who did research on Fishing Owls.
These would be good test cases. 
But, Let’s look at the current exhibit.

In Flutter, it makes sense to keep the state above the widgets that use it. Source: Stateful Widgets: https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple

## Implementation

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/ScreenShotSketchForMyApp.png)
![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/artToDO.png)

Navigation Bar works - Three Screens
![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/NavBarScreenshot.png)


