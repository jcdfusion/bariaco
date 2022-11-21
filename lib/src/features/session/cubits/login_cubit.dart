import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../../../api/user_repository.dart';
import 'authentication_cubit.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final UserRepository _userRepository;

  LoginCubit(this._userRepository) : super(LoginInitial());

  void createEmailSession(String email, String password) async {
    emit(LoginLoading());
    try {
      await _userRepository.createEmailSession(email, password);
      emit(LoginComplete());
    } on UserException catch (exception) {
      emit(LoginFailure(error: exception.message));
    }
  }
}
