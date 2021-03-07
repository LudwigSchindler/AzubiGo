import 'package:azubi_go/screens/main_screen.dart';
import 'package:azubi_go/widgets/azubi_card.dart';
import 'package:azubi_go/widgets/overview_grid.dart';
import 'package:flutter/material.dart';

class CollectionsScreen extends StatelessWidget {

  final collections = [
    AzubiCard.icon(Text("Erfolge", style: TextStyle(color: Colors.white, fontSize: 20)), Icons.military_tech_rounded),
    AzubiCard.icon(Text("Memes", style: TextStyle(color: Colors.white, fontSize: 20)), Icons.attractions),
    AzubiCard.icon(Text("Mitarbeiter", style: TextStyle(color: Colors.white, fontSize: 20)), Icons.person_rounded),
    AzubiCard.icon(Text("Tools", style: TextStyle(color: Colors.white, fontSize: 20)), Icons.construction_rounded),
    AzubiCard.icon(Text("Soundboard", style: TextStyle(color: Colors.white, fontSize: 20)), Icons.volume_up_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return OverviewGrid(collections, 50, 5);
  }
}
