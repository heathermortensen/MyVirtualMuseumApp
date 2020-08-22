# MyMuseumApp
* MyMuseumApp helps a visitor photograph a museum exhibit so that others can see it virtually. 

* Artworks displayed in a gallery exhibit always have an informational plauque. It displays artist name, title of the piece, date created, and medium. I call it 'Information' in the code.
Often people see a piece they like, but don't write down the title. When people return home and hope to investigate the piece, they have forgotten the details necessary to research it.
This app can assist in storing that information for later reference. (Link to reddit page HERE)

* This app was created to farmiliarize me with Flutter, its state patterns, widgets, & functionality.

* Artworks are conventially displayed and documented with the following information: 1.) A photo of the entire work; 2.) A close up of an area of interest (known as a 'detail' image); 3.) A summary of information about the work (title of the piece, artist name, medium, and date of creation); and 4.) A written description of the work prepared by the curator. These items are referred to in the code as Photo, Detail, Information, and Description. (See figure 1)

![AGuyFromTheUrals](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/AManFromTheUrals.png)

**Figure 1.** Conventional documentation of a piece of art

A database is not the most appropriate implementation to store art pieces within this app. A List that that changes size dynamically would provide flexibility for a user to take as many photos of an art piece as they wanted. However, since I want to familiarize myself with Flutter's database implementation methods, I construct the following DB. It holds 4 photos to correspond with the art piece data pictured in figure 1.

![MyVirtualExhibitAppFirstScreenSketch](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/databaseImage2.png) 

**Figure 2.** Sketch of a database to hold paintings shown in an exhibit

To do
------------------------
- [  ] Where can I apply Block pattern to control state? (Maybe need some other state patterns for other things, like the button). 
- [  ] Draw a picture of all the different local and global states so I can see how state patterns might operate in unison.
- [  ] Make a new branch on Git so that I can revert back when I break this thing again.
- [  ] Investigate yaml file to learn why 2nd image has never displayed. Post question on Stack overflow.
- [  ] Look at maps and tile widgets. Can I hold all the exhibit images in a map at the top level? This might make state simpler.
- [  ] Start looking at how to access camera function.

- [ ] Implement the following:
![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/artToDO.png)

State
------------------------

* In Flutter, it makes sense to keep the state above the widgets that use it. Source: Stateful Widgets: https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple
Push state up to the top of the widget tree. Then, it can be passed down through constructors.

* The app holds a list of exhibits. Each exhibits holds an unlimited number of pieces of artwork, alongside their detailed information.

* A user can photograph each painting's information from the plague hanging next to it on the gallery wall, or they can input that information into a textbox as pictured in image 3.

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/artShowApp7.png)


## Implementation

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/ScreenShotSketchForMyApp.png)


### Navigation Bar leads to 3 screens

* The bottomNavigationBar has 3 buttons - Home, Exhibits, and Add an Exhibit.

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/NavBarScreenshot.png)

* Yet to implement ....

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/NavBarScreenshot2.png)

