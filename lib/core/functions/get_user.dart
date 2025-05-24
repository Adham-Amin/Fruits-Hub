import 'dart:convert';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/services/shared_preferences.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  final jsonData =  Prefs.getString(kUserData);
  return UserEntity.fromMap(jsonDecode(jsonData));
}
