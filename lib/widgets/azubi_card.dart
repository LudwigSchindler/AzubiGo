import 'package:flutter/material.dart';

class AzubiCard extends StatelessWidget {
  final String link;


  AzubiCard(this.link);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Flexible(
            flex: 4,
            child: Container(
              // color: Colors.amber,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://picsum.photos/200"),
                  // image: AssetImage("assets/memes/meme-0001.jpg"),
                ),
              ),
            ),
          ),
          Flexible(
            child: Stack(children: [
              Container(
                color: Colors.teal,
              ),
              Center(
                  child: Text(
                "Test",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ]),
            flex: 1,
          )
        ],
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.longestSide / 90)),
    );
  }
}
