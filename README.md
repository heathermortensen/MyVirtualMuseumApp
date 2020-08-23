# MyMuseumApp
* MyMuseumApp helps a visitor photograph a museum exhibit so that others can see it virtually. 

* This app was created to farmiliarize me with Flutter, its state patterns, widgets, & functionality.

Purpose:

* Often people see a piece of art that speaks to them, but they don't write down the title. 
It might not be immediatley obvious to them that they have connected with a piece.
Upon returning home, they see the piece again and again in their minds. It naggs at them.
But, they lack the detailed information necessary to research it later. [Example here](https://www.reddit.com/r/museum/comments/3kxzg7/vasili_neyasov_a_guy_from_the_urals_1959/)

* Artworks displayed in a gallery exhibit always have an informational plauque. I call it 'Information' inside the code.
It displays artist name, title of the piece, date created, and medium. 

This app can assist in storing that information for later reference. 

* Artworks are conventially displayed and documented with the following information: 1.) A photo of the entire work; 2.) A close up photo of an area of interest (known as a 'detail'); 3.) A summary of information about the work (title of the piece, artist name, medium, and date of creation); and 4.) A written description of the work prepared by the curator. 

These items are referred to in my code as Photo, Detail, Information, and Description. (See figure 1)

![AGuyFromTheUrals](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/AManFromTheUrals.png)

**Figure 1.** Conventional documentation of a piece of art

* Database

A database is not the most appropriate implementation to store art pieces within this app. 
A List that that changes size dynamically and would provide flexibility for a user to take as many photos as desired.
However, since I hope to familiarize myself with Flutter's database methods, I propose the following DB. 
It holds a maximum of 4 photos to correspond with the art piece attributes pictured in figure 1.

![MyVirtualExhibitAppFirstScreenSketch](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/databaseImage2.png) 

**Figure 2.** Sketch of a database to hold paintings shown in an exhibit

To Do
------------------------
- [ ] Where can I apply Block pattern to control state? (Maybe need some other state patterns for other things, like the button). 
- [ ] Draw a picture of all the different local and global states so I can see how state patterns might operate in unison.

Picture HERE

- [ ] Make a new branch on Git so that I can revert back when I break this thing again.
- [ ] Investigate yaml file to learn why 2nd image has never displayed. Post question on Stack overflow.

Link HERE

- [ ] Look at maps and tile widgets. Can I hold all the exhibit images in a map at the top level? This might make state simpler.
- [ ] Start looking at how to access camera function.


## Currently Implementated

### Navigation Bar leads to 3 screens

* The bottomNavigationBar has 3 buttons - Home, Exhibits, and Add an Exhibit.

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/NavBarScreenshot.png)

**Figure 3.** Current implemetaion of the museum app

## Yet to Implement

A PAINTING object holds detailed information about the artwork.
An EXHIBIT objecct holds all the artworks displayed together in a gallery as a museum exhibit.

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/NavBarScreenshot2.png)
 
 **Figure 4** Design 
 
 Implement the following To-Do list:
 ----------------------------------------
- [ ] TMORA Link
- [ ] List of Exhibits display page
- [ ] List of Paintings display page
- [ ] Add new exhibit page
- [ ] Add new painting page

![Screenshot](https://raw.githubusercontent.com/heathermortensen/MyVirtualMuseumApp/master/images/artshowapp7.png)

**Figure 5.** Sketch of a possible 'Add a new  painting page'

State stuff comes next
------------------------

* In Flutter, it makes sense to keep the state above the widgets that use it. Source: Stateful Widgets: https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple
Push state up to the top of the widget tree. Then, it can be passed down through constructors.

* The app holds a list of exhibits. Each exhibits holds an unlimited number of pieces of artwork, alongside their detailed information.

* A user can photograph each painting's information from the plague hanging next to it on the gallery wall, or they can input that information into a textbox as pictured in image 3.

### Web tutorials to help

* [ ] [Flutter Tutorial for Beginners - Build iOS & Android Apps w/ Googles Flutter & Dart](https://www.youtube.com/watch?v=6ZCz6Ylqk3A)
* [ ] [Circle Image View in Flutter](https://medium.com/@boldijar.paul/circle-image-view-in-flutter-965963c46cf5)
* [ ] [Raised button](https://www.youtube.com/watch?v=i_qXHGaDIqc)
* [ ] [Flutter Tutorial for Beginners #16 - Stateful Widgets](https://www.youtube.com/watch?v=p5dkB3Mrxdo)

#### State Patterns

* [ ] [Flutter State Management Guide](https://fireship.io/lessons/flutter-state-management-guide/)
* [ ] [Simple app state management](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple)
* [ ] [Excellent video that performs login via a bunch of different patterns](https://medium.com/coding-with-flutter/flutter-state-management-setstate-bloc-valuenotifier-provider-2c11022d871b)
* [ ] [Keep it Simple, State: Architecture for Flutter Apps (DartConf 2018)](https://www.youtube.com/watch?v=zKXz3pUkw9A)
* [ ] [Managing state in Flutter with Provider - Part 1](https://www.youtube.com/watch?v=SxmYaqKyRfc)

#### BLoc Pattern

* [ ] [Flutter BLoC Pattern Tutorial From Scratch](https://www.youtube.com/watch?v=oxeYeMHVLII)
* [ ] [Bloc Library – Painless State Management for Flutter](https://www.youtube.com/watch?v=nQMfaQeCL6M)

Coding with Curry:
* [ ] [How to Manage State in Flutter using BLoC for Beginners](https://www.youtube.com/watch?v=vA_bBx92OH0)

#### Managing State

* [ ] [Managing state in Flutter with Provider w/ a list- Part 1](https://www.youtube.com/watch?v=SxmYaqKyRfc)

#### SQLFlite

* [ ] [SQLite DB using bloc](youtube.com/watch?v=8bV9ixYNAL4)
* [ ] [Save an image as a string in an SQLflite](https://www.youtube.com/watch?v=AZzwLRIBpuw)
* [ ] [Google's Flutter Tutorial - Offline DB Storage From Service, SQLite CRUD Operations](https://www.youtube.com/watch?v=KsZQQK1HOu8)

#### Routing & Navigation

* [ ] [Flutter Routes & Navigation – Parameters, Named Routes, onGenerateRoute](https://www.youtube.com/watch?v=nyvwx7o277U)
* [ ] [Flutter Sailor Navigation Tutorial – The Simplest Navigator Library?](https://www.youtube.com/watch?v=T1hzNcaAKiA)

#### Camera operations

* [ ] [Flutter - Import Camera and Gallery Image | Best Ways](https://www.youtube.com/watch?v=cyhuPzAlgUU)
* [ ] [Flutter Tutorial - 16.Capture image](https://www.youtube.com/watch?v=gkYQKFE0Fmk)
* [ ] [Flutter ImagePicker Widget | Use Camera, Gallery to Pick Images, Videos | Flutter Tutorial](https://www.youtube.com/watch?v=m_87i4hHPuQ)
* [ ] [Flutter - Import Camera and Gallery Image | Best Ways](https://www.youtube.com/watch?v=cyhuPzAlgUU)
* [ ] [Take a picture using the camera](https://flutter.dev/docs/cookbook/plugins/picture-using-camera#:~:text=Many%20apps%20require%20working%20with,and%20take%20photos%20or%20videos.)

#### Asynchronous Programming

* [ ] [Dart & Flutter Asynchronous Tutorial using Future API, Await, Async and Then functions](https://www.youtube.com/watch?v=g9Uk1Xou0m4)

#### Complex UI

* [ ] [Implementing complex UI with Flutter - Marcin Szałek | Flutter Europe](https://www.youtube.com/watch?v=FCyoHclCqc8)

#### User id/authentication - firebase

* [ ] [(Ep 19) Flutter: User Authentication With Email and Password Using Firebase Auth](https://www.youtube.com/watch?v=iTYD13w6Duo)

#### BottomNavBar to another page

* [ ] [Flutter Bottom Navigation Bar example with Route to another Page in Flutter - Flutter Tutorial 2019](https://www.youtube.com/watch?v=18PVdmBOEQM)
* [ ] [Persisting UI State and Building Bottom Navigation Bars in Dart's Flutter Framework](https://www.youtube.com/watch?v=EyLqj9L_Tck)

#### URL Launcher

* [ ] [Exploring Webviews and the Url Launcher Plugin in Dart's Flutter Framework](https://www.youtube.com/watch?v=sK-8k1Dq1xM)
* [ ] [Flutter Tutorials | URL Launcher Package | Dial Phone-Numbers | Send E-Mails | Dart](https://www.youtube.com/watch?v=OfhQsWfRxRE)





