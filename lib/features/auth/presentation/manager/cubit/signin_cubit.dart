import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> createUser({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SigninLoading());
    final result = await authRepo.createUser(
      email: email,
      password: password,
      name: name,
    );
    result.fold(
      (failure) => emit(SigninError(failure: failure)),
      (user) => emit(SigninLoaded(user: user)),
    );
  }
}
