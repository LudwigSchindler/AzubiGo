import 'package:azubi_go/models/card_data.dart';
import 'package:flutter/material.dart';

class AzubiCard extends StatelessWidget implements CardData {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.longestSide / 90),
      ),
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: function,
        child: Column(
          children: [
            Flexible(
              flex: 4,
              child: Center(child: preview),
            ),
            Flexible(
              child: Stack(
                children: [
                  Container(
                    color: Colors.teal,
                  ),
                  Center(child: label),
                ],
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget preview;

  @override
  Widget label;

  @override
  Object object;

  Function function;

  AzubiCard(this.label, this.preview, this.object, this.function);

  AzubiCard.image(this.label, String path, this.object, this.function) {
    this.preview = Container(
      // color: Colors.amber,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(path),
        ),
      ),
    );
  }
}
