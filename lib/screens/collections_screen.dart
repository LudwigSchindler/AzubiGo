import 'dart:developer';

import 'package:azubi_go/screens/main_screen.dart';
import 'package:azubi_go/screens/mitarbeiter_screen.dart';
import 'package:azubi_go/service/storage.dart';
import 'package:azubi_go/widgets/azubi_card.dart';
import 'package:azubi_go/widgets/overview_grid.dart';
import 'package:flutter/material.dart';

class CollectionsScreen extends StatelessWidget {

  static const routeName = "collections";

  List<Widget> getCollections(BuildContext context){
    return [
      AzubiCard(
          Text("Erfolge", style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(
            Icons.military_tech_rounded,
            size: 128,
          ),
          null,
          null),
      AzubiCard(
          Text("Memes", style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(Icons.attractions, size: 128),
          null,
          null),
      AzubiCard(
          Text("Mitarbeiter",
              style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(Icons.person_rounded, size: 128),
          null,
              () {
            Navigator.of(context).pushNamed(MitarbeiterScreen.routeName);
          }),
      AzubiCard(
          Text("Tools", style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(Icons.construction_rounded, size: 128),
          null,
          null),
      AzubiCard(
          Text("Soundboard", style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(Icons.volume_up_rounded, size: 128),
          null,
          null),
      AzubiCard(
          Text("Challenges", style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(Icons.flag_rounded, size: 128),
          null,
          null),
      AzubiCard(Text("Orte", style: TextStyle(color: Colors.white, fontSize: 20)),
          Icon(Icons.room_rounded, size: 128), null, null),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return OverviewGrid(getCollections(context), 50, 5);
  }
}
