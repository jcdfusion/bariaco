import 'package:bariaco/src/api/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;

  AuthenticationCubit(this._authenticationRepository)
      : super(AuthenticationUnknown());

  void authenticate() async {
    emit(AuthenticationUnknown());
    if (await _authenticationRepository.isAuthenticated()) {
      emit(AuthenticationComplete());
    } else {
      emit(AuthenticationIncomplete());
    }
  }

  void deAuthenticate() async {
    emit(AuthenticationUnknown());
    bool status = await _authenticationRepository.removeSession();
    if (status) {
      emit(AuthenticationIncomplete());
    } else {
      emit(AuthenticationComplete());
    }
  }
}
