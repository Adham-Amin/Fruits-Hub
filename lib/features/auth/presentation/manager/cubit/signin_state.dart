part of 'signin_cubit.dart';

abstract class SigninState {}

final class SigninInitial extends SigninState {}
final class SigninLoading extends SigninState {}
final class SigninLoaded extends SigninState {
  final UserEntity user;
  SigninLoaded({required this.user});
}
final class SigninError extends SigninState {
  final Failure failure;
  SigninError({required this.failure});
}
