import 'package:azubi_go/screens/communication_screen.dart';
import 'package:azubi_go/screens/home_screen.dart';
import 'package:azubi_go/screens/templates/main_destination_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'collections_screen.dart';
import 'education_screen.dart';

class MainScreen extends StatelessWidget {
  static ValueNotifier<int> screenIndex = ValueNotifier(0);

  MainScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: screenIndex,
          builder: (BuildContext context, int index, Widget child) {
            return IndexedStack(
              index: index,
              children: [
                // HomeScreen(),
                // CommunicationScreen(),
                // EducationScreen(),
                // CollectionsScreen(),
                MainDestinationScreen(HomeScreen()),
                MainDestinationScreen(CommunicationScreen()),
                MainDestinationScreen(EducationScreen()),
                MainDestinationScreen(CollectionsScreen()),
              ],
            );
          },
        ),
      ),
      // appBar: MainAppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.campaign_rounded),
        backgroundColor: Colors.deepPurple,
        onPressed: null,
      ),
    );
  }
}
