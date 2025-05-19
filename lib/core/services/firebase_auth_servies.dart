import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServies {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("errorFromSiginFirebase: ${e.message}}");
      if (e.code == 'weak-password') {
        throw CustomException(message: S.current.weakPassword);
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: S.current.emailAlreadyInUse);
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: S.current.networkFailed);
      } else {
        throw CustomException(message: S.current.somethingWentWrong);
      }
    } catch (e) {
      log("error: ${e.toString()}");
      throw CustomException(message: S.current.somethingWentWrong);
    }
  }

  Future<User> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("errorFromLoginFirebase: ${e.message}}");
      if (e.code == 'user-not-found') {
        throw CustomException(message: S.current.userNotFound);
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: S.current.wrongPassword);
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: S.current.networkFailed);
      } else {
        throw CustomException(message: S.current.somethingWentWrong);
      }
    } catch (e) {
      log("error: ${e.toString()}");
      throw CustomException(message: S.current.somethingWentWrong);
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    return (await FirebaseAuth.instance.signInWithCredential(
      facebookAuthCredential,
    )).user!;
  }

  Future<void> deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
