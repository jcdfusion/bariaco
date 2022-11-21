import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import '../../../api/user_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final UserRepository _userRepository;

  RegisterCubit(this._userRepository) : super(RegisterInitial());

  void createUser(String email, String name, String password) async {
    // Register User
    emit(RegistrationLoading());
    try {
      await _userRepository.createAccount(email, password, name);
      emit(RegistrationComplete());
    } on UserException catch(exception) {
      emit(RegistrationFailure(error: exception.message));
    }
  }
}
