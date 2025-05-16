import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/generated/l10n.dart';

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
      log("errorFromFirebase: ${e.message}}");
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
}
