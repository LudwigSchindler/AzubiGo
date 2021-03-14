import 'package:azubi_go/screens/collections_screen.dart';
import 'package:azubi_go/screens/education_screen.dart';
import 'package:azubi_go/screens/home_screen.dart';
import 'package:azubi_go/screens/main_screen.dart';
import 'package:flutter/material.dart';

class MainNavigationRail extends StatelessWidget {
  static ValueNotifier<int> destinationIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
        elevation: 3,
        selectedIndex: destinationIndex.value,
        onDestinationSelected: (int index) {
          destinationIndex.value = index;

          MainScreen.screenIndex.value = index;
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
        ]);
  }
}
