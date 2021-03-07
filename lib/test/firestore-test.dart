import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireStoreTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CollectionReference memes =
        FirebaseFirestore.instance.collection("memes");

    final Future<DocumentSnapshot> snapshot = memes.doc("meme-0001").get();

    return FutureBuilder(
      future: snapshot,
      builder: (context, s) {
        if(s.hasData){
        return Text(s.data["name"]);
        }
        return CircularProgressIndicator();
      },
    );
  }
}
