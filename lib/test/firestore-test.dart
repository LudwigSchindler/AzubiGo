import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireStoreTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CollectionReference memes =
        FirebaseFirestore.instance.collection("memes");
  }
}
