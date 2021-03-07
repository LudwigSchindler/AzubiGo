import 'package:azubi_go/screens/collections_screen.dart';
import 'package:azubi_go/screens/home_screen.dart';
import 'package:azubi_go/screens/locations_screen.dart';
import 'package:azubi_go/widgets/main_app_bar.dart';
import 'package:azubi_go/widgets/main_navigation_rail.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  static ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final screens = [
    HomeScreen(),
    Text("Kommunikation"),
    Text("Ausbildung"),
    CollectionsScreen(),
    Text("Challenges"),
    LocationsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          MainNavigationRail(),
          ValueListenableBuilder(valueListenable: selectedIndex, builder: (BuildContext context, int index, Widget child){
            return screens[index];
          }),
        ],
      ),
      appBar: MainAppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.campaign_rounded),
        backgroundColor: Colors.deepPurple,
        onPressed: null,
      ),
    );
  }
}
