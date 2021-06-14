import 'package:azubi_go/service/database_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum Position{
GL, MA, AZUBI, PRAKTIKANT, WERKSTUDENT
}
class AzubiUser {
  static AzubiUser _currentUser;
  DocumentReference _userDoc;
  List<String> _name;
  String _department;
  DateTime _dateOfBirth;
  Position _position;



  AzubiUser.fromFirestore(String kuerzel) {
    String path = "collections/users/user-detail/$kuerzel";

    Future<DocumentSnapshot> doc = DatabaseService.instance.doc(path).get();

    doc.then((snapshot) {
      Map<String, dynamic> data = snapshot.data();
      _name = [...data["name"]];
      _department = data["department"];
      _dateOfBirth = DateTime.fromMillisecondsSinceEpoch(data["date_of_birth"].millisecondsSinceEpoch);
      _userDoc = snapshot.reference;
      print(_dateOfBirth.toIso8601String());
    });

    _currentUser = this;
  }

  String getKuerzel() {
    return _userDoc.id;
  }

  String getFirstName() {
    return _name.first;
  }

  String get department => _department;

  String getLastName() {
    return _name.last;
  }


  DateTime get dateOfBirth => _dateOfBirth;

  static AzubiUser getUser() {
    return _currentUser;
  }
}
