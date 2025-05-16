import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exception.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_servies.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthServies firebaseServies;
  AuthRepoImpl({required this.firebaseServies});

  @override
  Future<Either<Failure, UserEntity>> createUser({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await firebaseServies.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserEntity.fromFirebase(user));
    } on CustomException catch (e) {
      return left(ServerFailure(message: e.message));
    } catch (e) {
      log("errorAuthRepoImpl: ${e.toString()}");
      return left(ServerFailure(message: e.toString()));
    }
  }
}
