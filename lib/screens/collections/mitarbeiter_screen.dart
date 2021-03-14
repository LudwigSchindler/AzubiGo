import 'package:azubi_go/widgets/azubi_card.dart';
import 'package:azubi_go/widgets/overview_grid.dart';
import 'package:flutter/material.dart';

class MitarbeiterScreen extends StatelessWidget {

  final images = [
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1000", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1001", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1002", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1003", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1004", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1005", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1006", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1007", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1008", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1009", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1010", null, null),
    AzubiCard.image(Text("Test Titel"), "https://picsum.photos/1011", null, null),
  ];

  @override
  Widget build(BuildContext context) {
    return OverviewGrid(images, 50, 5);
  }
}
