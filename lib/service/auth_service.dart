
import 'package:azubi_go/models/azubiUser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  //TODO-RELEASE: change mail address
  static const DEFAULT_MAIL = "mailinator.com";

  static Future<String> loginUser(String kuerzel, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: getMailByKuerzel(kuerzel), password: password);
    } on FirebaseAuthException catch (error) {
      return new Future.value(error.code.toString());
    }
    _auth.currentUser.reload();
    if (!_auth.currentUser.emailVerified) {
      await _auth.signOut();
      return new Future.value("Bitte bestätige zuerst deine E-Mail-Adresse.");
    }
    // User is verified
   AzubiUser.fromFirestore(kuerzel);
    return null;
  }

  /// Registriert den Nutzer mit den angegebenen Daten.
  /// Im Anschluss wird eine Verifikationsmail versendet.
  /// Eine entsprechende Hinweis- oder ggf. Fehlermeldung wird im zurückgelieferten Future übergeben.
  static Future<String> registerUserAndLogin(
      String kuerzel, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: getMailByKuerzel(kuerzel), password: password);
    } on FirebaseAuthException catch (error) {
      return new Future.value(error.code.toString());
    }
    await _auth.currentUser.sendEmailVerification();
    return new Future.value("Eine Verifikationsmail wurde versendet.");
  }

  static String getMailByKuerzel(String kuerzel){
    return kuerzel.contains("@") ? kuerzel : kuerzel + "@" + DEFAULT_MAIL;
  }
}
