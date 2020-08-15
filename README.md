# MyVirtualMuseumApp
MyVirtualMuseumApp holds a list of museum exhibits that I visited so that other people can participate in a virtual visit. 

It allows a user to take photos of the artwork and store details about the title, artist name, date, medium, and description for later reference. This would be a helpful reference tool for museum volunteers when visitors inquired about specific pieces from shows that have come and gone (which they commonly do when they have seen a piece that they love and want more information about).

Artworks in gallery exhibits always have an informational plauque hanging next to them on the wall that contains descriptive information regarding medium, date, and artist. It looks like this:

![BodyOfSovietArtExhibitPiece]()

These screenshots show how a user might take photos of and store details about artwork in the gallery exhibit.

![MyVirtualExhibitAppFirstScreenSketch](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/AppSideBySide.png) 


I use MyVirtualMusesumApp to hold a Stateful Widget called an Painting. A painting represents a piece of Art. Many Paintings stored in a List are called an Exhibit (or, perhaps a PaintingManager?).
MyVirtualMuseumApp holds a List of Exbits. It is the ExhibitManager.

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
