import 'package:flutter/material.dart';

enum RootTab { home, exhibits, add_exhibits }
// enum ShapesIn2D {
//  Circle,
//  Square,
//  Triangle;

//  String getName(int count) {
//    switch() {

///   }
//  }
// }

// ShapesIn2D.Circle
// RootTab.home

extension RootTabExt on RootTab {
  String get name {
    switch (this) {
      case RootTab.home:
        return "Home";
      case RootTab.exhibits:
        return "Exhibits";
      case RootTab.add_exhibits:
        return "Add Exhibits";
      default:
        throw Exception("Invalid tab selected");
    }
  }

  IconData get icon {
    switch (this) {
      case RootTab.home:
        return Icons.home;
      case RootTab.exhibits:
        return Icons.photo_library;
      case RootTab.add_exhibits:
        return Icons.add_photo_alternate;
      default:
        throw Exception("Invalid tab selected");
    }
  }
}

class MyBottomNavigationBar extends StatelessWidget {
  final RootTab currentTab;
  final ValueChanged<RootTab> onTabSelected;

  MyBottomNavigationBar({
    @required this.currentTab,
    @required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.green,
      iconSize: 30,

      //onTap property pushes the index into onTabSelected
      onTap: (int index) {
        onTabSelected(RootTab.values[index]);
      },

      currentIndex: currentTab.index,

      //Map is used here so that data can change within a staeless widget.
      items: RootTab.values.map(_buildItem).toList(), //end of Items list
    );
  }

  BottomNavigationBarItem _buildItem(RootTab tab) {
    return BottomNavigationBarItem(
      title: Text(tab.name),
      icon: Icon(tab.icon),
      //backgroundColor: Colors.yellow,
    );
  }
}
