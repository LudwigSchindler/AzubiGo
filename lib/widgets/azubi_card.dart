import 'package:azubi_go/models/card_data.dart';
import 'package:flutter/material.dart';

class AzubiCard extends StatelessWidget implements CardData {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Flexible(
            flex: 4,
            child: icon == null
                ? Container(
                    // color: Colors.amber,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: previewImage,
                        // image: AssetImage("assets/memes/meme-0001.jpg"),
                      ),
                    ),
                  )
                : Center(
                    child: Icon(
                    icon,
                    size: 120,
                      color: Colors.black54,
                  )),
          ),
          Flexible(
            child: Stack(
              children: [
                Container(
                  color: Colors.teal,
                ),
                Center(
                  child: label
                  // Text(
                  // "Test",
                  //   style: TextStyle(color: Colors.white, fontSize: 20),
                  // ),
                ),
              ],
            ),
            flex: 1,
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.longestSide / 90),
      ),
    );
  }

  @override
  NetworkImage previewImage;

  @override
  Widget label;

  IconData icon;


  AzubiCard.icon(this.label, this.icon);

  AzubiCard.image(this.label, this.previewImage);
}
