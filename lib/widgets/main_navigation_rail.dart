import 'package:azubi_go/screens/collections_screen.dart';
import 'package:azubi_go/screens/main_screen.dart';
import 'package:flutter/material.dart';

class MainNavigationRail extends StatefulWidget {
  @override
  _MainNavigationRailState createState() => _MainNavigationRailState();
}

class _MainNavigationRailState extends State<MainNavigationRail> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        elevation: 3,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          MainScreen.selectedIndex.value = index;
        },
        labelType: NavigationRailLabelType.none,
        destinations: [
          NavigationRailDestination(
            icon: Icon(Icons.home_rounded),
            label: Text('Home'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.chat_rounded),
            label: Text('Kommunikation'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.school_rounded),
            label: Text('Ausbildung'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.collections_rounded),
            label: Text('Sammlungen'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.flag_rounded),
            label: Text('Challenges'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.room_rounded),
            label: Text('Orte'),
          ),
        ]);
  }
}
