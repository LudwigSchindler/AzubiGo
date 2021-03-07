import 'package:azubi_go/widgets/azubi_card.dart';
import 'package:azubi_go/widgets/overview_grid.dart';
import 'package:flutter/material.dart';

class LocationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = [
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1000")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1001")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1002")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1003")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1004")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1005")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1006")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1007")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1008")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1009")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1010")),
      AzubiCard.image(
          Text("Test Titel"), NetworkImage("https://picsum.photos/1011")),
    ];

    return OverviewGrid(locations, 50, 5);
  }
}
