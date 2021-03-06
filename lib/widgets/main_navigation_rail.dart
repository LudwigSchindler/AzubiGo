import 'package:flutter/material.dart';

class MainNavigationRail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        elevation: 3,
        selectedIndex: 3,
        onDestinationSelected: null,
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
