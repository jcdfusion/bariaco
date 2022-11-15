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
    final user = _userRepository.createUser(email, name, password);
    user.then((response) {
      emit(RegistrationComplete());
    }).catchError((error) {
      emit(RegistrationFailure(error: error.response['message']));
    });
  }
}
