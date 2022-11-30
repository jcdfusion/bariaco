import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:equatable/equatable.dart';
import '../../../api/user_repository.dart';
import '../../../form_inputs/account/email.dart';
import '../../../form_inputs/account/password.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final UserRepository _userRepository;

  LoginCubit(this._userRepository) : super(const LoginState());

  void createEmailSession() async {
    emit(state.copyWith(status: LoginStatus.loading));
    try {
      await _userRepository.createEmailSession(
          state.email.value, state.password.value);
      emit(state.copyWith(status: LoginStatus.complete));
    } on UserException catch (exception) {
      emit(state.copyWith(
          error: exception.toString(), status: LoginStatus.failure));
    }
  }

  /// Form Validation
  void emailValidation(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
        email: email,
        status: LoginStatus.initial,
        formStatus: Formz.validate([email, state.password])));
  }

  void passwordValidation(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
        password: password,
        status: LoginStatus.initial,
        formStatus: Formz.validate([state.email, password])));
  }
}
