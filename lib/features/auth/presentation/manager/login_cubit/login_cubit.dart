import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());

  final AuthRepo authRepo;

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    final result = await authRepo.loginUser(email: email, password: password);
    result.fold(
      (failure) => emit(LoginError(failure: failure)),
      (user) => emit(LoginLoaded(user: user)),
    );
  }
}
