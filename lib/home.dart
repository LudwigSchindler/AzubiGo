import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'widgets/azubi_card.dart';
import 'widgets/main_app_bar.dart';
import 'widgets/main_navigation_rail.dart';
import 'widgets/overview_grid.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  var exampleTreeImages = [
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
    AzubiCard("https://picsum.photos/1080"),
  ];

  var exampleTreeColors = [
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.lightBlue,
    ),
    Container(
      color: Colors.yellowAccent,
    ),
    Container(
      color: Colors.lightGreenAccent,
    ),
    Container(
      color: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          kIsWeb || MediaQuery.of(context).size.longestSide > 1000
              ? MainNavigationRail()
              : Container(),
          OverviewGrid(exampleTreeImages, 50, 5),
        ],
      ),
      appBar: MainAppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.campaign_rounded),
        backgroundColor: Colors.deepPurple,
        onPressed: null,
      ),
      drawer: kIsWeb
          ? null
          : Drawer(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home_rounded),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_rounded),
                    title: Text("Home"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_rounded),
                    title: Text("Mitarbeiter"),
                  ),
                  ListTile(
                    leading: Icon(Icons.flag_rounded),
                    title: Text("Challenges"),
                  ),
                  ListTile(
                    leading: Icon(Icons.book_rounded),
                    title: Text("Sammelheft"),
                  ),
                  ListTile(
                    leading: Icon(Icons.volume_up_rounded),
                    title: Text("Soundboard"),
                  ),
                  ListTile(
                    leading: Icon(Icons.build_rounded),
                    title: Text("Tools"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.settings_rounded),
                    title: Text("Einstellungen"),
                  ),
                ],
              ),
            ),
    );
  }
}
