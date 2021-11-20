import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth extends ChangeNotifier {
  ///User logged in
  User? user;

  FirebaseAuth _auth = FirebaseAuth.instance;

  /// Sign in with google
  ///
  /// Returns false if login was canceled or unsuccessful
  Future<bool> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return false;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    return await _auth.signInWithCredential(credential).then((response) {
      user = response.user;
      return true;
    }).catchError((error) {
      user = null;
      return false;
    });
  }

  /// Sign out
  ///
  /// Returns false if there was an error
  Future<bool> signOut() async {
    return await GoogleSignIn().signOut().then((googleUser) async {
      return await _auth.signOut().then((_) {
        user = null;
        return true;
      }).catchError((error) {
        return false;
      });
    }).catchError((error) {
      return false;
    });
  }
}
