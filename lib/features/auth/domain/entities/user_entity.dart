import 'package:firebase_auth/firebase_auth.dart';

class UserEntity {
  final String uId;
  final String name;
  final String email;

  UserEntity({required this.uId, required this.name, required this.email});

  factory UserEntity.fromFirebase(User user) => UserEntity(
    uId: user.uid,
    name: user.displayName ?? '',
    email: user.email ?? '',
  );
}
