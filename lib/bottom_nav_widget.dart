import 'package:flutter/material.dart';

enum RootTab { home, exhibits, add_exhibits }

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

      onTap: (index) => onTabSelected(RootTab.values[index]),
      //currentIndex: _currentNavBarIndex,
      ////////////////
      ///Question: Should this pull from the navBar State or the MyMuseumApp state??
      ///Right now, its pulling from MyMuseumApp, which is prob why it isnt working.
      //currentIndex: _currentIndex, //Good when this was inside the MyMuseumApp class
      currentIndex: currentTab.index,

      //Note: u must have 2 items here
      items: RootTab.values.map(_buildItem).toList(), //end of Items list
    );
  }

  BottomNavigationBarItem _buildItem(RootTab tab) {
    return BottomNavigationBarItem(
      title: Text(tab.name),
      icon: Icon(tab.icon),
      backgroundColor: Colors.yellow,
    );
  }
}
