import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUser({
    required String email,
    required String password,
    required String name,
  });

  Future<Either<Failure, UserEntity>> loginUser({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> logoinWithGoogleUser();

  Future<Either<Failure, UserEntity>> logoinWithFacebookUser();

  Future addUserData({required UserEntity user, required String docId});

  Future<Map<String, dynamic>> getUserData({required String docId});
}
