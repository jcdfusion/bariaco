import 'package:bariaco/src/form_inputs/account/password.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import '../../../api/user_repository.dart';
import '../../../form_inputs/account/email.dart';
import '../../../form_inputs/account/name.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final UserRepository _userRepository;

  RegisterCubit(this._userRepository) : super(const RegisterState());

  /// User Creation
  Future<void> createUser() async {
    // Register User
    emit(state.copyWith(status: RegisterStatus.loading));
    try {
      await _userRepository.createAccount(
          state.email.value, state.password.value, state.name.value);
      emit(state.copyWith(status: RegisterStatus.complete));
    } on UserException catch (exception) {
      emit(state.copyWith(
          status: RegisterStatus.failure, error: exception.message));
    }
  }

  /// Form Validation
  void emailValidation(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
        email: email,
        status: RegisterStatus.initial,
        formStatus: Formz.validate([email, state.name, state.password])));
  }

  void nameValidation(String value) {
    final name = Name.dirty(value);
    emit(state.copyWith(
        name: name,
        status: RegisterStatus.initial,
        formStatus: Formz.validate([state.email, name, state.password])));
  }

  void passwordValidation(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
        password: password,
        status: RegisterStatus.initial,
        formStatus: Formz.validate([state.email, state.name, password])));
  }
}
